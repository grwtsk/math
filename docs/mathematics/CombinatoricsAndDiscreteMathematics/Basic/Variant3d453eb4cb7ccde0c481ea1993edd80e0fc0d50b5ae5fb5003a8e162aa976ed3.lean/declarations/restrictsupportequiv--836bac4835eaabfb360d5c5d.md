# restrictSupportEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:106da10986ab577e9383d7a2b6251c0f4ca028565ce42238601bcb3d7c6a9ff9",
  "kind": "def",
  "lexical_name": "restrictSupportEquiv",
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
  "slug": "restrictsupportequiv--836bac4835eaabfb360d5c5d",
  "source": {
    "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1366,
    "line": 1354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:836bac4835eaabfb360d5c5d33a4acdbd31ed2e9c943c664c9de8bc04f63885d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:106da10986ab577e9383d7a2b6251c0f4ca028565ce42238601bcb3d7c6a9ff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1354–1366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def restrictSupportEquiv (s : Set α) (M : Type*) [AddCommMonoid M] :
    { f : α →₀ M // ↑f.support ⊆ s } ≃ (s →₀ M) where
  toFun f := subtypeDomain (· ∈ s) f.1
  invFun f := letI := Classical.decPred (· ∈ s); ⟨f.extendDomain, support_extendDomain_subset _⟩
  left_inv f :=
    letI := Classical.decPred (· ∈ s); Subtype.ext <| extendDomain_subtypeDomain f.1 f.prop
  right_inv _ := letI := Classical.decPred (· ∈ s); subtypeDomain_extendDomain _

/-- Given `AddCommMonoid M` and `e : α ≃ β`, `domCongr e` is the corresponding `Equiv` between
`α →₀ M` and `β →₀ M`.

This is `Finsupp.equivCongrLeft` as an `AddEquiv`. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean#L1354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb22c7bb0aa43b606848cc0702206a326da41479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
