# card_causalState_le_memory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:676af98c-95e5-cf82-97c8-60b8faba87f2",
  "kind": "theorem",
  "lexical_name": "card_causalState_le_memory",
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
  "slug": "card-causalstate-le-memory--cd46afde3a95424ae869325b",
  "source": {
    "blob": "f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd46afde3a95424ae869325b10657ef5c88cab254617d0ac6607029c50cd5f76",
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

Occurrence: `result:676af98c-95e5-cf82-97c8-60b8faba87f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_causalState_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)]
    [Fintype (System.CausalState M)] :
    Fintype.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  (R.card_causalState_le_effectiveMemory).trans
    R.card_effectiveMemory_le_memory

/--
Finite ambient memory alone suffices to instantiate the image and quotient
cardinalities: the effective image embeds into memory and surjects onto causal
state.  The concrete state type itself need not be finite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variantb5e847f6683f4a4192cf3e9a76a29bf4f65043e8dfc477c96c3656bafe89149b.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f25bd59cdba6ed11a3f8d7e63f2642dd70bc56f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
