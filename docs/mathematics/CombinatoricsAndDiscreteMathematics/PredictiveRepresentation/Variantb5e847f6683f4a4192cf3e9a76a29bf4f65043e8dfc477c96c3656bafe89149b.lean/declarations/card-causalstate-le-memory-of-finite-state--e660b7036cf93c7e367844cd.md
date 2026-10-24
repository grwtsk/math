# card_causalState_le_memory_of_finite_state

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aa65a04-cd57-e3bc-ff18-20c43b565f94",
  "kind": "theorem",
  "lexical_name": "card_causalState_le_memory_of_finite_state",
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
  "slug": "card-causalstate-le-memory-of-finite-state--e660b7036cf93c7e367844cd",
  "source": {
    "blob": "f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e660b7036cf93c7e367844cd91d458ee3e19a52de5cac57eab41ade1e8c6b2af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aa65a04-cd57-e3bc-ff18-20c43b565f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_causalState_le_memory_of_finite_state
    [Finite State]
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  R.card_causalState_le_memory_of_finite_memory

/--
Instance-light form of the same theorem: finite memory induces finite
image/quotient types automatically, so no chosen `Fintype` enumeration of
either quotient and no finiteness assumption on concrete state is required.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
