# subsemiringClosure_eq_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a4cac017cfb69c2edf204c63963e7d297b6563c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 866,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1ce1f6-2ba6-dabe-8fed-ee64f24075a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87fc4d2f-ed71-32e4-0855-2bbd3b4bb2ad",
  "kind": "theorem",
  "lexical_name": "subsemiringClosure_eq_closure",
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
  "slug": "subsemiringclosure-eq-closure--71411f1859c2975206120001",
  "source": {
    "blob": "3a4cac017cfb69c2edf204c63963e7d297b6563c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 866,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71411f1859c2975206120001dd7e37e29719acc932d0e49bd079e30dec198992",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87fc4d2f-ed71-32e4-0855-2bbd3b4bb2ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsemiringClosure_eq_closure : M.subsemiringClosure = Subsemiring.closure (M : Set R) := by
  ext
  refine'
    ⟨fun hx => _, fun hx =>
      (Subsemiring.mem_closure.mp hx) M.subsemiringClosure fun s sM => _⟩
  <;> rintro - ⟨H1, rfl⟩
  <;> rintro - ⟨H2, rfl⟩
  · exact AddSubmonoid.mem_closure.mp hx H1.toAddSubmonoid H2
  · exact H2 sM
#align submonoid.subsemiring_closure_eq_closure Submonoid.subsemiringClosure_eq_closure

end Submonoid

namespace Subsemiring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4cac017cfb69c2edf204c63963e7d297b6563c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
