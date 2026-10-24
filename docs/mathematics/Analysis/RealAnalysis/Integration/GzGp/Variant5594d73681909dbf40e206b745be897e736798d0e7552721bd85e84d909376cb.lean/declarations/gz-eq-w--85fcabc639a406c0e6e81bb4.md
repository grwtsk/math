# Gz_eq_W

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3925f71a-7234-2a5d-4e77-91de0311d472",
  "kind": "lemma",
  "lexical_name": "Gz_eq_W",
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
  "slug": "gz-eq-w--85fcabc639a406c0e6e81bb4",
  "source": {
    "blob": "e42ec40aaa1fba3380c379aefd9371d57526e89d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fcabc639a406c0e6e81bb44f90deca5791cf303df1ad27b097479c3845cc03",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3925f71a-7234-2a5d-4e77-91de0311d472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gz_eq_W (Z : ZeroConfig) (k l : Fin (P.d T)) :
    Z.Gz P T k l = Z.W (P.fk T k) (P.fk T l) := by
  unfold ZeroConfig.Gz ZeroConfig.W ZeroConfig.Gsummand ZeroConfig.Wsummand
  congr 1
  ext ρ
  rw [paperFT_fk, paperFT_fk, ← Complex.conj_ofReal (P.tau T l), ← map_sub,
    phiHat_conj, Complex.conj_conj, Complex.conj_ofReal]

/-- Prime side: the [eq:EF] right-hand side at (f_k, f_l) is literally G_{kl} [eq:Gdef, 2nd expr].
No hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42ec40aaa1fba3380c379aefd9371d57526e89d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
