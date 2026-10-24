# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5b76db75ae0434b17603bae15df2f3f7827d8646d36b15096188c8f4736c61a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3b6bda3f4f90cea2bef8b631",
  "source": {
    "blob": "886fd98ef9c3e064abf5fed42fbbfa9bdae022e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b6bda3f4f90cea2bef8b631281ae64ee335c8ca03b75f623eabfa69ee7ccb81",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5b76db75ae0434b17603bae15df2f3f7827d8646d36b15096188c8f4736c61a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Group (PushoutI φ) :=
  { Con.group (PushoutI.con φ) with
    toMonoid := PushoutI.monoid }

namespace NormalWord

/-
In this section we show that there is a normal form for words in the amalgamated product. To have a
normal form, we need to pick canonical choice of element of each right coset of the base group. The
choice of element in the base group itself is `1`. Given a choice of element of each right coset,
given by the type `Transversal φ` we can find a normal form. The normal form for an element is an
element of the base group, multiplied by a word in the coproduct, where each letter in the word is
the canonical choice of element of its coset. We then show that all groups in the diagram act
faithfully on the normal form. This implies that the maps into the coproduct are injective.

We demonstrate the action is faithful using the equivalence `equivPair`. We show that `G i` acts
faithfully on `Pair d i` and that `Pair d i` is isomorphic to `NormalWord d`. Here, `d` is a
`Transversal`. A `Pair d i` is a word in the coproduct, `Coprod G`, the `tail`, and an element
of the group `G i`, the `head`. The first letter of the `tail` must not be an element of `G i`.
Note that the `head` may be `1` Every letter in the `tail` must be in the transversal given by `d`.

We then show that the equivalence between `NormalWord` and `PushoutI`, between the set of normal
words and the elements of the amalgamated product. The key to this is the theorem `prod_smul_empty`,
which says that going from `NormalWord` to `PushoutI` and back is the identity. This is proven
by induction on the word using `consRecOn`.
-/

variable (φ)

/-- The data we need to pick a normal form for words in the pushout. We need to pick a
canonical element of each coset. We also need all the maps in the diagram to be injective -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variant92e29d04338b326b8821cab96f2210dbd10e73e60eac84fbccd8536a52423ff7.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886fd98ef9c3e064abf5fed42fbbfa9bdae022e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
