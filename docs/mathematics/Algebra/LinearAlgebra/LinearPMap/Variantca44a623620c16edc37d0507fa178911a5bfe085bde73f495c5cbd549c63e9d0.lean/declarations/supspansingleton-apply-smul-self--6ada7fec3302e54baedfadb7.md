# supSpanSingleton_apply_smul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:036b0e32-5f21-d543-5f48-d222403a8e63",
  "kind": "theorem",
  "lexical_name": "supSpanSingleton_apply_smul_self",
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
  "slug": "supspansingleton-apply-smul-self--6ada7fec3302e54baedfadb7",
  "source": {
    "blob": "177776ef55055397436abf880aa7fbb25c2ebed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 543,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ada7fec3302e54baedfadb78d1294015df054241a79684c2c7185acef8f9102",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:036b0e32-5f21-d543-5f48-d222403a8e63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supSpanSingleton_apply_smul_self (f : E →ₗ.[K] F) {x : E} (y : F) (hx : x ∉ f.domain)
    (c : K) :
    f.supSpanSingleton x y hx ⟨c • x, mem_sup_right <| mem_span_singleton.2 ⟨c, rfl⟩⟩ = c • y := by
  simpa [(mk_eq_zero _ _).mpr rfl] using supSpanSingleton_apply_mk f x y hx 0 (zero_mem _) c

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177776ef55055397436abf880aa7fbb25c2ebed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
