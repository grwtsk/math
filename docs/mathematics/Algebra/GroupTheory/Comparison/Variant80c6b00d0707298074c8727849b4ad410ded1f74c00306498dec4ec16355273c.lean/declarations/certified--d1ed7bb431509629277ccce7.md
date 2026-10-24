# certified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8db823f48cdd2e3fe65d586a75f9294be5ed1759cfb8863c5dbce0d5d91bbbbc",
  "kind": "def",
  "lexical_name": "certified",
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
  "slug": "certified--d1ed7bb431509629277ccce7",
  "source": {
    "blob": "cdf384f1f1c00a96b5e33af2d5564e40ed34a9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1ed7bb431509629277ccce72003b8289ce2a20e77f765f8316d9b403a07dfca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8db823f48cdd2e3fe65d586a75f9294be5ed1759cfb8863c5dbce0d5d91bbbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certified
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int)
    (scope : Comparison.Scope) :
    Comparison.Certified (K.Source degree) (K.Target degree) :=
  Comparison.Certified.ofProof
    (K.comparison degree)
    Comparison.CoefficientContext.integral
    Comparison.CoefficientContext.integral
    scope
    (K.InducedBy A.groupRingMap K.kTheoryMap)
    K.induced_by_groupRingMap

end KTheoryFunctoriality

/--
A representation-indexed family of K-theory realization maps with common
source and target types.

The proof predicate is supplied by the chosen K-theory model.  Every selected
map is proved to be induced by the corresponding representation's group-ring
homomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf384f1f1c00a96b5e33af2d5564e40ed34a9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
