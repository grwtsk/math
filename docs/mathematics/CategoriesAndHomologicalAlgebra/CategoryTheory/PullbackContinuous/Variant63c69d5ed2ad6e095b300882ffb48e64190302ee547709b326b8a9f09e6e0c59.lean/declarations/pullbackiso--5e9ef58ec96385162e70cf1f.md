# pullbackIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4924a730580073cd7a770f47eb3213ee0b8dafbf808ae70f96e06e0bd248159d",
  "kind": "def",
  "lexical_name": "pullbackIso",
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
  "slug": "pullbackiso--5e9ef58ec96385162e70cf1f",
  "source": {
    "blob": "6ffa7105821a631753be0181a5194c65432c4d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e9ef58ec96385162e70cf1f2b44b4d9693e6dced794a10ddc07f3969abfcc53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4924a730580073cd7a770f47eb3213ee0b8dafbf808ae70f96e06e0bd248159d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pullbackIso :
    pullback.{v} φ ≅
      forget S ⋙ PresheafOfModules.pullback.{v} φ.val ⋙
        PresheafOfModules.sheafification (𝟙 R.val) :=
  Adjunction.leftAdjointUniq (pullbackPushforwardAdjunction φ)
    (PullbackConstruction.adjunction φ)

section

variable [HasWeakSheafify J AddCommGrp.{v}] [J.WEqualsLocallyBijective AddCommGrp.{v}]

/-- The pullback of (pre)sheaves of modules commutes with the sheafification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ffa7105821a631753be0181a5194c65432c4d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
