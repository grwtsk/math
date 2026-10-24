# Estimator.improveUntilAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b75b097379c462bfe2828aafd7ae29c302a341ccb171bcc52bc00995042bd5e5",
  "kind": "def",
  "lexical_name": "Estimator.improveUntilAux",
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
  "slug": "estimator-improveuntilaux--d3659205c334579c24dec17c",
  "source": {
    "blob": "2ef2d3c58f1b7a22f3764d59cd8b6a69bcd80c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3659205c334579c24dec17cec23b180d8d814f9ef949b7619f212e7a25476a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b75b097379c462bfe2828aafd7ae29c302a341ccb171bcc52bc00995042bd5e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Estimator.improveUntilAux [PartialOrder α]
    (a : Thunk α) (p : α → Bool) [Estimator a ε]
    [WellFoundedGT (range (bound a : ε → α))]
    (e : ε) (r : Bool) : Except (Option ε) ε :=
    if p (bound a e) then
      return e
    else
      match improve a e, improve_spec e with
      | none, _ => .error <| if r then none else e
      | some e', _ =>
        improveUntilAux a p e' true
termination_by Estimator.improveUntilAux p I e r => (⟨_, mem_range_self e⟩ : range (bound a))

/--
Improve an estimate until it satisfies a predicate,
or else return the best available estimate, if any improvement was made.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant0ae2a23de9163649fdc35f07ed3c9c7cf3fab13a89c72da9ed727fff731e8ba7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef2d3c58f1b7a22f3764d59cd8b6a69bcd80c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
