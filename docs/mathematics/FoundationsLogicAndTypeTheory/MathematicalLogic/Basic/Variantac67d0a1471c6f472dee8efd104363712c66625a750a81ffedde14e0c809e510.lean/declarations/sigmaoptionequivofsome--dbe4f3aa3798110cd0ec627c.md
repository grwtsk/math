# sigmaOptionEquivOfSome

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b652f84b275ef0c45f93550b420649174406a0ca41e836be2ce6a91ca9452eee",
  "kind": "def",
  "lexical_name": "sigmaOptionEquivOfSome",
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
  "slug": "sigmaoptionequivofsome--dbe4f3aa3798110cd0ec627c",
  "source": {
    "blob": "f5a100d20e7acfb10fd70a2aa6dd5e500c2e808a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbe4f3aa3798110cd0ec627cf166d42e68e44eb1b0a14cc5d5daeec33238c7a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b652f84b275ef0c45f93550b420649174406a0ca41e836be2ce6a91ca9452eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaOptionEquivOfSome {α} (p : Option α → Type v) (h : p none → False) :
    (Σ x : Option α, p x) ≃ Σ x : α, p (some x) :=
  haveI h' : ∀ x, p x → x.isSome := by
    intro x
    cases x
    · intro n
      exfalso
      exact h n
    · intro _
      exact rfl
  (sigmaSubtypeEquivOfSubset _ _ h').symm.trans (sigmaCongrLeft' (optionIsSomeEquiv α))

/-- The `Pi`-type `∀ i, π i` is equivalent to the type of sections `f : ι → Σ i, π i` of the
`Sigma` type such that for all `i` we have `(f i).fst = i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantac67d0a1471c6f472dee8efd104363712c66625a750a81ffedde14e0c809e510.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a100d20e7acfb10fd70a2aa6dd5e500c2e808a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
