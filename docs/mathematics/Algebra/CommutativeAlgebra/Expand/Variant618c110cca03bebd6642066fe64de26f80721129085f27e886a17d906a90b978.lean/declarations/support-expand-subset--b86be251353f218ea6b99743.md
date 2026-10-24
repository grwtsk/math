# support_expand_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:506712cd-8f38-a309-589b-fda4916054af",
  "kind": "theorem",
  "lexical_name": "support_expand_subset",
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
  "slug": "support-expand-subset--b86be251353f218ea6b99743",
  "source": {
    "blob": "3dfc06750b931be6ff53a9377c26ec353d22c334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86be251353f218ea6b99743019c9f3bee5b04acea97a853180be55a11bfd379",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:506712cd-8f38-a309-589b-fda4916054af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_expand_subset (φ : MvPowerSeries σ R) :
    (expand p hp φ).support ⊆ φ.support.image (p • ·) := by
  intro d hd
  have : ∀ i, p ∣ d i := fun _ => by_contra fun hc => hd (coeff_expand_of_not_dvd p hp φ hc)
  let m := d.mapRange (fun n => n / p) (Nat.zero_div p)
  have eq_aux : p • m = d := (Finsupp.ext fun a => Nat.eq_mul_of_div_eq_right (this a) rfl).symm
  rw [Function.mem_support, ← eq_aux, ← coeff_apply (expand p hp φ), coeff_expand_smul,
    coeff_apply] at hd
  exact ⟨m, hd, eq_aux⟩

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant618c110cca03bebd6642066fe64de26f80721129085f27e886a17d906a90b978.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dfc06750b931be6ff53a9377c26ec353d22c334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
