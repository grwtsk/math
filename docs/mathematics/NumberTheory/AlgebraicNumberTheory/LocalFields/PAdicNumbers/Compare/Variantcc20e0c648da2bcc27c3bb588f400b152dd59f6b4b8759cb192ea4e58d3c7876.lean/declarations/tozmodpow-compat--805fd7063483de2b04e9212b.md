# toZModPow_compat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790455db-93cf-44da-7e04-ea36df01fe7e",
  "kind": "theorem",
  "lexical_name": "toZModPow_compat",
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
  "slug": "tozmodpow-compat--805fd7063483de2b04e9212b",
  "source": {
    "blob": "e07cd23ade9056ccbc8a8955fbc422b7a59f93b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:805fd7063483de2b04e9212b6a762f231f87e8b97a8f576c919b0a581c1e65c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790455db-93cf-44da-7e04-ea36df01fe7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toZModPow_compat (m n : ℕ) (h : m ≤ n) :
    (ZMod.castHom (pow_dvd_pow p h) (ZMod (p ^ m))).comp (toZModPow p n) = toZModPow p m :=
  calc
    (ZMod.castHom _ (ZMod (p ^ m))).comp ((zmodEquivTrunc p n).symm.toRingHom.comp (truncate n))
    _ = ((zmodEquivTrunc p m).symm.toRingHom.comp (TruncatedWittVector.truncate h)).comp
          (truncate n) := by
      rw [commutes_symm, RingHom.comp_assoc]
    _ = (zmodEquivTrunc p m).symm.toRingHom.comp (truncate m) := by
      rw [RingHom.comp_assoc, truncate_comp_wittVector_truncate]

/-- `toPadicInt` lifts `toZModPow : 𝕎 (ZMod p) →+* ZMod (p ^ k)` to a ring hom to `ℤ_[p]`
using `PadicInt.lift`, the universal property of `ℤ_[p]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07cd23ade9056ccbc8a8955fbc422b7a59f93b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
