# lift_apply_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91967b7850818f9a0ed89a5aaea8e47b3b9cf821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6493a713-3b87-3942-d6a9-99c4914618ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea3cb63c-c09f-d0b1-af8e-191d4d7f2beb",
  "kind": "theorem",
  "lexical_name": "lift_apply_mk'",
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
  "slug": "lift-apply-mk--37edf444574c38fa764e3889",
  "source": {
    "blob": "91967b7850818f9a0ed89a5aaea8e47b3b9cf821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37edf444574c38fa764e388911aa087f7c3c82c5dc5235f29b9abb6d72855bb6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3cb63c-c09f-d0b1-af8e-191d4d7f2beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_apply_mk' (f : c.Quotient →* P) :
    (c.lift (f.comp c.mk') fun x y h => show f ↑x = f ↑y by rw [c.eq.2 h]) = f := by
  ext x; rcases x with ⟨⟩; rfl

/-- Homomorphisms on the quotient of a monoid by a congruence relation `c` are equal if their
compositions with `c.mk'` are equal. -/
@[to_additive (attr := ext) /-- Homomorphisms on the quotient of an `AddMonoid` by an additive
congruence relation `c` are equal if their compositions with `c.mk'` are equal. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantb1189bcfd7c38d529d1b33054886c31816c791dd24b6c17c3263d27b3f1dc0e6.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91967b7850818f9a0ed89a5aaea8e47b3b9cf821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
