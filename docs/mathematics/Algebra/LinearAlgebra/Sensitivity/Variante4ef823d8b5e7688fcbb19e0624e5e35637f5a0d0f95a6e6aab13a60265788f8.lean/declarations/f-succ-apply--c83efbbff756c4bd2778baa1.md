# f_succ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:961f9497-f002-dcfe-3667-32cd6b7f2641",
  "kind": "theorem",
  "lexical_name": "f_succ_apply",
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
  "slug": "f-succ-apply--c83efbbff756c4bd2778baa1",
  "source": {
    "blob": "21e1587b28267d52face7f025b7c3c6aaf89f6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 280,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c83efbbff756c4bd2778baa1117a6b760bc6d000ed6c0b270c65b4c7f904a2fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:961f9497-f002-dcfe-3667-32cd6b7f2641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_succ_apply (v : V n.succ) : f n.succ v = (f n v.1 + v.2, v.1 - f n v.2) := by
  cases v
  rw [f]
  simp only [sub_eq_add_neg]
  exact rfl

/-! In the next statement, the explicit conversion `(n : ℝ)` of `n` to a real number
is necessary since otherwise `n • v` refers to the multiplication defined
using only the addition of `V`. -/


set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e1587b28267d52face7f025b7c3c6aaf89f6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
