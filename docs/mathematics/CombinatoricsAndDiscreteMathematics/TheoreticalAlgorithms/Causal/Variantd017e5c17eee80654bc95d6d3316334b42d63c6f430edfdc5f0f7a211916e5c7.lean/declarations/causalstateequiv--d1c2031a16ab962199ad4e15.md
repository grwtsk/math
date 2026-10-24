# causalStateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:655de64919e6de301dde9f574f1adb742f6fd95d9ff1911f732e472eb6ac872b",
  "kind": "def",
  "lexical_name": "causalStateEquiv",
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
  "slug": "causalstateequiv--d1c2031a16ab962199ad4e15",
  "source": {
    "blob": "bfeda367dbe393855ab5a928003d550b59ef9f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1c2031a16ab962199ad4e1529572f6717aaf1373d93c0d6e995a5c001be4219",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:655de64919e6de301dde9f574f1adb742f6fd95d9ff1911f732e472eb6ac872b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def causalStateEquiv (F : M.Iso N) :
    M.CausalState ≃ N.CausalState where
  toFun := F.hom.causalStateMap F.hom_input_bijective.2
  invFun := F.inv.causalStateMap F.symm.hom_input_bijective.2
  left_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change M.toCausal (F.inv.mapState (F.hom.mapState x)) = M.toCausal x
    rw [F.hom_inv_state]
  right_inv := by
    intro q
    refine Quotient.inductionOn q ?_
    intro x
    change N.toCausal (F.hom.mapState (F.inv.mapState x)) = N.toCausal x
    rw [F.inv_hom_state]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variantd017e5c17eee80654bc95d6d3316334b42d63c6f430edfdc5f0f7a211916e5c7.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfeda367dbe393855ab5a928003d550b59ef9f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
