# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Dest.Variant85a285f19870e88af67f6af0a707a6aaf6f9e054ade32f084e17f5dcbdd770b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `519cd20f6f032a49369b875638f6ae4decfd7ef5` · SHA-256 `85a285f19870e88af67f6af0a707a6aaf6f9e054ade32f084e17f5dcbdd770b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Marcelo Lynch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marcelo Lynch
-/

import Cache.Marker

/-!
# The upload destination contract

The resolved destination every upload consumes (`StagedUploadDest`) and the
shared container-write builder (`containerUploadDest`). Each backend module
resolves its own destination on top of these (`azureUploadDestFrom` in
`Cache/Upload/Azure.lean`, `s3UploadDestFrom` in `Cache/Upload/S3.lean`), and
`Cache/Upload/Defs.lean` arbitrates. The prefixes build on `fileDirPath` and
`markerDirPath` (`Cache/Infra.lean`, `Cache/Marker.lean`), the same policies
the reads use, so every upload path follows the read-side path contract.
-/

namespace Cache.Requests

/--
The resolved destination of a staged (`put`) upload. `base` is the upload
base; the prefixes are relative to it and carry no trailing slash.
Every staged file goes under `filesPrefix` and keeps its base name; the
per-SHA marker goes under `markerPrefix` with the SHA as its name (`fileURL`,
`markerURL`). `label` names the destination in progress and warning messages:
the container name, or a note that an endpoint override applies.
-/
structure StagedUploadDest where
  base : String
  label : String
  filesPrefix : String
  markerPrefix : String
  deriving Repr, BEq

/-- Upload URL of a staged file: `{base}/{filesPrefix}/{fileName}`. Every
tool addresses this URL (rclone through its `:s3:` remote syntax). -/
def StagedUploadDest.fileURL (dest : StagedUploadDest) (fileName : String) : String :=
  s!"{dest.base}/{dest.filesPrefix}/{fileName}"

/-- Upload URL of the per-SHA marker: `{base}/{markerPrefix}/{sha}`. Every
tool addresses this URL (rclone through its `:s3:` remote syntax). -/
def StagedUploadDest.markerURL (dest : StagedUploadDest) (sha : String) : String :=
  s!"{dest.base}/{dest.markerPrefix}/{sha}"

/--
The destination of a container write under `base`: the container's path
segment, then the container's file layout (`fileDirPath`) and the marker
directory (`markerDirPath`). Both backends build their container
destinations with this, so a container write has one shape wherever it
lands.
-/
def containerUploadDest (base : String) (c : Container) (repo : String)
    (scope? : Option String) : StagedUploadDest :=
  { base, label := c.name,
    filesPrefix := s!"{c.pathSegment}/{fileDirPath (some c) repo scope?}",
    markerPrefix := s!"{c.pathSegment}/{markerDirPath repo}" }

end Cache.Requests
```
