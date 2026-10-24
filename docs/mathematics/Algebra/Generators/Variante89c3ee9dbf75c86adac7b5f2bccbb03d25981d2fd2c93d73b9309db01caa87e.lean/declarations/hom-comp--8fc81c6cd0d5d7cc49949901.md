# Hom.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:453d2c5959920df906148afd0aa1ec2e96eb23b94a8efb42a7227279caa78c61",
  "kind": "def",
  "lexical_name": "Hom.comp",
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
  "slug": "hom-comp--8fc81c6cd0d5d7cc49949901",
  "source": {
    "blob": "412d88c2574a8c795883acfb12eda1de4ce5c4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 493,
    "path": "GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fc81c6cd0d5d7cc49949901024b01c001c4ce8e40813f7cf214ef3d21e0dea1",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:453d2c5959920df906148afd0aa1ec2e96eb23b94a8efb42a7227279caa78c61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Hom.comp [IsScalarTower R' R'' S''] [IsScalarTower R' S' S'']
    [IsScalarTower S S' S''] (f : Hom P' P'') (g : Hom P P') : Hom P P'' where
  val x := aeval f.val (g.val x)
  aeval_val x := by
    rw [IsScalarTower.algebraMap_apply S S' S'', ← g.aeval_val]
    induction g.val x using MvPolynomial.induction_on with
    | C r => simp [← IsScalarTower.algebraMap_apply]
    | add x y hx hy => simp only [map_add, hx, hy]
    | mul_X p i hp => simp only [map_mul, hp, aeval_X, aeval_val]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412d88c2574a8c795883acfb12eda1de4ce5c4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
