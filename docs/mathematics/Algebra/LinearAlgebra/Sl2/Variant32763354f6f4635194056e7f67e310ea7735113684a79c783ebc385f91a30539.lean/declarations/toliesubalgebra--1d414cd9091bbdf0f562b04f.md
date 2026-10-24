# toLieSubalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b784e19025d847e7a093bd3a5c921ffa73d51b0059e85695ea4fe7a166646a2e",
  "kind": "def",
  "lexical_name": "toLieSubalgebra",
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
  "slug": "toliesubalgebra--1d414cd9091bbdf0f562b04f",
  "source": {
    "blob": "91fdb6337421f987f0b99d176252bdb8ef672e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d414cd9091bbdf0f562b04f7e52cfd104562e223e3622b54bea9e368214c59a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b784e19025d847e7a093bd3a5c921ffa73d51b0059e85695ea4fe7a166646a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toLieSubalgebra (t : IsSl2Triple h e f) :
    LieSubalgebra R L where
  __ := span R {e, f, h}
  lie_mem' {x y} hx hy := by
    simp only [carrier_eq_coe, SetLike.mem_coe] at hx hy ⊢
    induction hx using span_induction with
    | zero => simp
    | add u v hu hv hu' hv' => simpa only [add_lie] using add_mem hu' hv'
    | smul t u hu hu' => simpa only [smul_lie] using smul_mem _ t hu'
    | mem u hu =>
      induction hy using span_induction with
      | zero => simp
      | add u v hu hv hu' hv' => simpa only [lie_add] using add_mem hu' hv'
      | smul t u hv hv' => simpa only [lie_smul] using smul_mem _ t hv'
      | mem v hv =>
        simp only [mem_insert_iff, mem_singleton_iff] at hu hv
        rcases hu with rfl | rfl | rfl <;>
        rcases hv with rfl | rfl | rfl <;> (try simp only [lie_self, zero_mem])
        · rw [t.lie_e_f]
          apply subset_span
          simp
        · rw [← lie_skew, t.lie_h_e_nsmul, neg_mem_iff]
          apply nsmul_mem <| subset_span _
          simp
        · rw [← lie_skew, t.lie_e_f, neg_mem_iff]
          apply subset_span
          simp
        · rw [← lie_skew, t.lie_h_f_nsmul, neg_neg]
          apply nsmul_mem <| subset_span _
          simp
        · rw [t.lie_h_e_nsmul]
          apply nsmul_mem <| subset_span _
          simp
        · rw [t.lie_h_f_nsmul, neg_mem_iff]
          apply nsmul_mem <| subset_span _
          simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91fdb6337421f987f0b99d176252bdb8ef672e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
