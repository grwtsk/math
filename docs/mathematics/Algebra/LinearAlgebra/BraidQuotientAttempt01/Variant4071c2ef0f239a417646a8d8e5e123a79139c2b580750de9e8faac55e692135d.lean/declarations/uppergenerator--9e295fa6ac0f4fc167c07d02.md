# upperGenerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c810b2abe78ac4ce231be223ece3640d7a4f4aa80cbde519da83a2c95f559fe",
  "kind": "def",
  "lexical_name": "upperGenerator",
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
  "slug": "uppergenerator--9e295fa6ac0f4fc167c07d02",
  "source": {
    "blob": "5ac7c9e201691c4d7c07cc8cec022faa1b8019fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 34,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e295fa6ac0f4fc167c07d020f04bf9f4af6207cd04911aa8cf71aa2b8d59c19",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c810b2abe78ac4ce231be223ece3640d7a4f4aa80cbde519da83a2c95f559fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def upperGenerator : SL(2, ℤ) :=
  ⟨!![1,1;0,1], by norm_num [Matrix.det_fin_two]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac7c9e201691c4d7c07cc8cec022faa1b8019fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
