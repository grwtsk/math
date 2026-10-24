# finite_prime_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fcd6e02-760d-2bf8-4a89-0ce9e3e6f35a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3276896b-8f81-aba5-1260-bf5bac1b360b",
  "kind": "theorem",
  "lexical_name": "finite_prime_left",
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
  "slug": "finite-prime-left--e5cfa0ae4b61ab4c36655fb4",
  "source": {
    "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5cfa0ae4b61ab4c36655fb479e6c187547295324249eeee49459ef308a5747a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3276896b-8f81-aba5-1260-bf5bac1b360b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_prime_left {a b : R} (ha : Prime a) (hb : b ≠ 0) : multiplicity.Finite a b := by
  classical
    revert hb
    refine'
      WfDvdMonoid.induction_on_irreducible b (fun c => c.irrefl.elim) (fun u hu _ => _)
        fun b p hb hp ih _ => _
    · rw [multiplicity.finite_iff_dom, multiplicity.isUnit_right ha.not_unit hu]
      exact PartENat.dom_natCast 0
    · refine'
        multiplicity.finite_mul ha
          (multiplicity.finite_iff_dom.mpr
            (PartENat.dom_of_le_natCast (show multiplicity a p ≤ ↑1 from _)))
          (ih hb)
      norm_cast
      exact
        ((multiplicity.squarefree_iff_multiplicity_le_one p).mp hp.squarefree a).resolve_right
          ha.not_unit
#align multiplicity.finite_prime_left multiplicity.finite_prime_left

end CancelCommMonoidWithZero

end multiplicity

section Irreducible

variable [CommMonoidWithZero R] [WfDvdMonoid R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf88fd873e1d27988d87e3218063091f23eeec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
