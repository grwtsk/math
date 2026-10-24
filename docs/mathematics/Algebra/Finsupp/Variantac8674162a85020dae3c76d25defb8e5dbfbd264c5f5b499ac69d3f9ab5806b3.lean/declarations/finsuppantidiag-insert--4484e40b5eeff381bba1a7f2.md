# finsuppAntidiag_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39bef546-a93b-a5c8-1703-d8c7425e76b0",
  "kind": "theorem",
  "lexical_name": "finsuppAntidiag_insert",
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
  "slug": "finsuppantidiag-insert--4484e40b5eeff381bba1a7f2",
  "source": {
    "blob": "d334a0b11054857d65b721b7b854b0e98e18754f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 93,
    "path": "GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4484e40b5eeff381bba1a7f27265c4bf535c610a59501426f0634e316411174f",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39bef546-a93b-a5c8-1703-d8c7425e76b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppAntidiag_insert {a : ι} {s : Finset ι}
    (h : a ∉ s) (n : μ) :
    finsuppAntidiag (insert a s) n = (antidiagonal n).biUnion
      (fun p : μ × μ =>
        (finsuppAntidiag s p.snd).attach.map
        ⟨fun f => Finsupp.update f.val a p.fst,
        (fun ⟨f, hf⟩ ⟨g, hg⟩ hfg => Subtype.ext <| by
          simp only [mem_val, mem_finsuppAntidiag] at hf hg
          simp only [DFunLike.ext_iff] at hfg ⊢
          intro x
          obtain rfl | hx := eq_or_ne x a
          · replace hf := mt (hf.2 ·) h
            replace hg := mt (hg.2 ·) h
            rw [notMem_support_iff.mp hf, notMem_support_iff.mp hg]
          · simpa only [coe_update, Function.update, dif_neg hx] using hfg x)⟩) := by
  ext f
  rw [mem_finsuppAntidiag_insert h, mem_biUnion]
  simp_rw [mem_map, mem_attach, true_and, Subtype.exists, Embedding.coeFn_mk, exists_prop, and_comm,
    eq_comm]

variable [AddCommMonoid μ'] [HasAntidiagonal μ'] [DecidableEq μ']

-- This should work under the assumption that e is an embedding and an AddHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d334a0b11054857d65b721b7b854b0e98e18754f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
