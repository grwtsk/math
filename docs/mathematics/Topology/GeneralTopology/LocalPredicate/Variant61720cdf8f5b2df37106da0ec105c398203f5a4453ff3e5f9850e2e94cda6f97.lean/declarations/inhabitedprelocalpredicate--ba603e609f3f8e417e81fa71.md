# inhabitedPrelocalPredicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:def6df83025886dfa8dfb66396803069d39bce49976cf2535d970716ef2e930d",
  "kind": "instance",
  "lexical_name": "inhabitedPrelocalPredicate",
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
  "slug": "inhabitedprelocalpredicate--ba603e609f3f8e417e81fa71",
  "source": {
    "blob": "97e256f8fa2cefc84ef7388743e9e8c7a712fba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba603e609f3f8e417e81fa714e32447cc30ba5856e08b75bf3365c154fa563b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:def6df83025886dfa8dfb66396803069d39bce49976cf2535d970716ef2e930d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabitedPrelocalPredicate (T) [TopologicalSpace T] :
    Inhabited (PrelocalPredicate fun _ : X ↦ T) :=
  ⟨continuousPrelocal X T⟩

variable {X} in
/-- Given a topological space `X : TopCat` and a type family `T : X → Type`,
a `P : LocalPredicate T` consists of:
* a family of predicates `P.pred`, one for each `U : Opens X`, of the form `(Π x : U, T x) → Prop`
* a proof that if `f : Π x : V, T x` satisfies the predicate on `V : Opens X`, then
  the restriction of `f` to any open subset `U` also satisfies the predicate, and
* a proof that given some `f : Π x : U, T x`,
  if for every `x : U` we can find an open set `x ∈ V ≤ U`
  so that the restriction of `f` to `V` satisfies the predicate,
  then `f` itself satisfies the predicate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e256f8fa2cefc84ef7388743e9e8c7a712fba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
