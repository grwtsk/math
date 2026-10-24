# _add_neg_neg_trick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0749a3fc-11b4-bedd-8710-02ff203a7573",
  "kind": "theorem",
  "lexical_name": "_add_neg_neg_trick",
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
  "slug": "add-neg-neg-trick--44011030a5a4a008f7d529cd",
  "source": {
    "blob": "133632616dc9c5a989e070a796d4e79663a3187f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/AddGroup/Variantf14c38c8b60dbdb65316ca8e8dbd0442ff93f5b225003a79b86ca7c34620fb05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44011030a5a4a008f7d529cd4f4abbdb078d790c7a930ed964404ced9878e7a4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddGroup/Variantf14c38c8b60dbdb65316ca8e8dbd0442ff93f5b225003a79b86ca7c34620fb05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0749a3fc-11b4-bedd-8710-02ff203a7573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem _add_neg_neg_trick {G : Type*} [AddGroup G] (a b : G) :
    a + (-b) + (-b) = a + (-2 : ℤ) • b := by
  rw [add_assoc, _neg_neg_trick]

/--
`add_group` normalizes expressions in additive groups without assuming commutativity. Unlike
`abel`, which does take advantage of commutativity, `add_group` instead only uses the additive
group axioms without any information about which group is manipulated. If the goal is an equality,
and after normalization the two sides are equal, `add_group` closes the goal.

`add_group at l1 l2 ...` normalizes at the given locations.

For additive commutative groups, use the `abel` tactic instead.
For multiplicative groups, use the `group` tactic instead.

Example:
```lean
example {G : Type} [AddGroup G] (a b c d : G) (h : c = (a + 2 • b) + (-(b + b) + (-a)) + d) :
    a + c + (-d) = a := by
  add_group at h -- normalizes `h` which becomes `h : c = d`
  rw [h]         -- the goal is now `a + d + (-d) = a`
  add_group      -- which is then normalized and closed
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddGroup/Variantf14c38c8b60dbdb65316ca8e8dbd0442ff93f5b225003a79b86ca7c34620fb05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddGroup/Variantf14c38c8b60dbdb65316ca8e8dbd0442ff93f5b225003a79b86ca7c34620fb05.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133632616dc9c5a989e070a796d4e79663a3187f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
