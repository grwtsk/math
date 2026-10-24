# ediv_dvd_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0aa9d99-a2ad-73ae-b930-e30867aeaf73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ee476bc-9e00-b759-2b26-97e1d8d44b34",
  "kind": "theorem",
  "lexical_name": "ediv_dvd_ediv",
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
  "slug": "ediv-dvd-ediv--34cbf103c13a78c0ee8390a4",
  "source": {
    "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 350,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34cbf103c13a78c0ee8390a4f22a871621d3acca961c5bfa15c7ccec618b856b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee476bc-9e00-b759-2b26-97e1d8d44b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_dvd_ediv : ∀ {a b c : ℤ} (_ : a ∣ b) (_ : b ∣ c), b / a ∣ c / a
  | a, _, _, ⟨b, rfl⟩, ⟨c, rfl⟩ =>
    if az : a = 0 then by simp [az]
    else by
      rw [Int.mul_ediv_cancel_left _ az, mul_assoc, Int.mul_ediv_cancel_left _ az];
        apply dvd_mul_right
#align int.div_dvd_div Int.ediv_dvd_ediv

#align int.eq_mul_of_div_eq_right Int.eq_mul_of_ediv_eq_right

#align int.div_eq_of_eq_mul_right Int.ediv_eq_of_eq_mul_right

#align int.eq_div_of_mul_eq_right Int.eq_ediv_of_mul_eq_right

#align int.div_eq_iff_eq_mul_right Int.ediv_eq_iff_eq_mul_right

#align int.div_eq_iff_eq_mul_left Int.ediv_eq_iff_eq_mul_left

#align int.eq_mul_of_div_eq_left Int.eq_mul_of_ediv_eq_left

#align int.div_eq_of_eq_mul_left Int.ediv_eq_of_eq_mul_left

#align int.eq_zero_of_div_eq_zero Int.eq_zero_of_ediv_eq_zero

#align int.div_left_inj Int.ediv_left_inj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a321d236658e896744880bc853bb7bdc52c2a0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
