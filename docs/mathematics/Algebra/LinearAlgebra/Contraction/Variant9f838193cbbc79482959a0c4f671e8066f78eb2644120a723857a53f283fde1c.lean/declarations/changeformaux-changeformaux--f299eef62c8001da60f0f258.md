# changeFormAux_changeFormAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d037e020-4a79-40cb-f5a2-62906eafd2ac",
  "kind": "theorem",
  "lexical_name": "changeFormAux_changeFormAux",
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
  "slug": "changeformaux-changeformaux--f299eef62c8001da60f0f258",
  "source": {
    "blob": "b7124df1bb575a257c67b24294ca91a4d3242a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f299eef62c8001da60f0f258bc28750ed3851b5a6a74e26754b1b655b8318c41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d037e020-4a79-40cb-f5a2-62906eafd2ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeFormAux_changeFormAux (B : BilinForm R M) (v : M) (x : CliffordAlgebra Q) :
    changeFormAux Q B v (changeFormAux Q B v x) = (Q v - B v v) • x := by
  simp only [changeFormAux_apply_apply]
  rw [mul_sub, ← mul_assoc, ι_sq_scalar, map_sub, contractLeft_ι_mul, ← sub_add, sub_sub_sub_comm,
    ← Algebra.smul_def, BilinForm.toLin_apply, sub_self, sub_zero, contractLeft_contractLeft,
    add_zero, sub_smul]
#align clifford_algebra.change_form_aux_change_form_aux CliffordAlgebra.changeFormAux_changeFormAux

variable {Q}

variable {Q' Q'' : QuadraticForm R M} {B B' : BilinForm R M}

variable (h : B.toQuadraticForm = Q' - Q) (h' : B'.toQuadraticForm = Q'' - Q')

/-- Convert between two algebras of different quadratic form, sending vector to vectors, scalars to
scalars, and adjusting products by a contraction term.

This is $\lambda_B$ from [bourbaki2007][] $9 Lemma 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7124df1bb575a257c67b24294ca91a4d3242a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
