# linter.modulesForbiddenWindows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:691e2fa30cc7cafa62cc2ef9588753c274d21d2a94acd8afd86a64cc867d74a9",
  "kind": "register_option",
  "lexical_name": "linter.modulesForbiddenWindows",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "linter-modulesforbiddenwindows--4b94ada621dbd70d4afc595b",
  "source": {
    "blob": "69f5c02b190bbcf1d3275900c6a37403c0b12275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 587,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b94ada621dbd70d4afc595ba53cc9c7d037af29af4b5bda1fc9dcb4c229681c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:691e2fa30cc7cafa62cc2ef9588753c274d21d2a94acd8afd86a64cc867d74a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public register_option linter.modulesForbiddenWindows : Bool := { defValue := true }

/-- Verifies that no module in `modules` contains CON, PRN, AUX, NUL, COM1, COM2, COM3, COM4, COM5,
COM6, COM7, COM8, COM9, COM¹, COM², COM³, LPT1, LPT2, LPT3, LPT4, LPT5, LPT6, LPT7, LPT8, LPT9,
LPT¹, LPT² or LPT³ in its filename, as these are forbidden on Windows.

Also verify that module names contain no forbidden characters such as `*`, `?` (Windows),
`!` (forbidden on Nix OS), `.` (might result from confusion with a module name)
or `'` (causes shell escaping issues in scripts).

Source: https://learn.microsoft.com/en-gb/windows/win32/fileio/naming-a-file.
Return the number of module names violating this rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f5c02b190bbcf1d3275900c6a37403c0b12275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
