# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loop.Variant5d3f57b65d17570115b90248dda539df6a6195cb1168e68d197610ab9e5c676d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24880f6c6db5be34c87e0dc6355b139b93f32e1a` · SHA-256 `67223de94b1984e71386edf2a143bf4dfea0d1a660ab345f01ca109d29a9199e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/UV/Loop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9

@[expose] public section

namespace Std
namespace Internal
namespace UV
namespace Loop

/--
Options for configuring the event loop behavior.
-/
structure Options where
  /--
  Accumulate the amount of idle time the event loop spends in the event provider.
  -/
  accumulateIdleTime : Bool := False

  /--
  Block a SIGPROF signal when polling for new events. It's commonly used for unnecessary wakeups
  when using a sampling profiler.
  -/
  blockSigProfSignal : Bool := False

/--
Configures the event loop with the specified options.
-/
@[extern "lean_uv_event_loop_configure"]
opaque configure (options : Options) : BaseIO Unit

/--
Checks if the event loop is still active and processing events.
-/
@[extern "lean_uv_event_loop_alive"]
opaque alive : BaseIO Bool

end Loop
end UV
end Internal
end Std
```
