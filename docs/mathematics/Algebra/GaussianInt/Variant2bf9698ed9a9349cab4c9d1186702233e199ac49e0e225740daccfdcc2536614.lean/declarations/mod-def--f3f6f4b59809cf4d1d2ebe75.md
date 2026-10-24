# mod_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c2d7303-0a78-6b77-ce57-265253b79e00",
  "kind": "theorem",
  "lexical_name": "mod_def",
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
  "slug": "mod-def--f3f6f4b59809cf4d1d2ebe75",
  "source": {
    "blob": "be5b7971cf8e9fc33d55dcdb082121a5ca662a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 243,
    "path": "GRWTSK/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f6f4b59809cf4d1d2ebe75c94aca6d0f2a53b7102269ec8645fb010e4e08b4",
  "verification": {
    "reference": "docs/verification/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c2d7303-0a78-6b77-ce57-265253b79e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_def (x y : ℤ[i]) : x % y = x - y * (x / y) :=
  rfl
#align gaussian_int.mod_def GaussianInt.mod_def

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussianInt/Variant2bf9698ed9a9349cab4c9d1186702233e199ac49e0e225740daccfdcc2536614.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5b7971cf8e9fc33d55dcdb082121a5ca662a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
