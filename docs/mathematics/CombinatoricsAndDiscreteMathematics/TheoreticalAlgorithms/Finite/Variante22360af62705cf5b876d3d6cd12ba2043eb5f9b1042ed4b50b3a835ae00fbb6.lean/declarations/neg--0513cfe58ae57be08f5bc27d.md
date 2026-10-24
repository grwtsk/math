# neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cdf1bbbbd5491c42bd1a10b296d2da44608da167ce0e464c37f98d9a5e9d336",
  "kind": "def",
  "lexical_name": "neg",
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
  "slug": "neg--0513cfe58ae57be08f5bc27d",
  "source": {
    "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 579,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0513cfe58ae57be08f5bc27d63b3c8e5b08958632b4b91eee5cb427f5466bae3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cdf1bbbbd5491c42bd1a10b296d2da44608da167ce0e464c37f98d9a5e9d336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def neg
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x : FiniteH1 G A ρ) :
    FiniteH1 G A ρ :=
  Quotient.liftOn x
    (fun x => mk (negZ1 x))
    (by
      intro x y h
      exact Quotient.sound (negZ1_respects h))

end FiniteH1

/-- Restriction of `1`-cochains along an action-compatible homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c8dbd8fabdb707f29845223cd3233e681f82e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
