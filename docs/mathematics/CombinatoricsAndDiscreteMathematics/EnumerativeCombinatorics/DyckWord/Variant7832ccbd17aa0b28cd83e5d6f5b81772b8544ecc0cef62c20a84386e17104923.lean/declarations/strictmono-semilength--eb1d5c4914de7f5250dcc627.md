# strictMono_semilength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c78ba17-c5d7-88b0-ecb2-12db6e266e8e",
  "kind": "lemma",
  "lexical_name": "strictMono_semilength",
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
  "slug": "strictmono-semilength--eb1d5c4914de7f5250dcc627",
  "source": {
    "blob": "f8bbbf6cf985f2a9e85de1b60a5418b1d78c487b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 477,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1d5c4914de7f5250dcc62788cc43dd9f78dd2d74606c0e691d2d0e6fe113d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c78ba17-c5d7-88b0-ecb2-12db6e266e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictMono_semilength : StrictMono semilength := fun p q pq ↦ by
  obtain ⟨plq, pnq⟩ := lt_iff_le_and_ne.mp pq
  apply lt_of_le_of_ne (monotone_semilength plq)
  contrapose pnq
  replace pnq := congr(2 * $(pnq))
  simp_rw [two_mul_semilength_eq_length] at pnq
  exact DyckWord.ext ((infix_of_le plq).eq_of_length pnq)

end Order

section BinaryTree

open BinaryTree

/-- Convert a Dyck word to a binary rooted tree.

`f(0) = nil`. For a nonzero word find the `D` that matches the initial `U`,
which has index `p.firstReturn`, then let `x` be everything strictly between said `U` and `D`,
and `y` be everything strictly after said `D`. `p = x.nest + y` with `x, y` (possibly empty)
Dyck words. `f(p) = f(x) △ f(y)`, where △ (defined in `Mathlib/Data/Tree/Basic.lean`) joins two
subtrees to a new root node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8bbbf6cf985f2a9e85de1b60a5418b1d78c487b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
