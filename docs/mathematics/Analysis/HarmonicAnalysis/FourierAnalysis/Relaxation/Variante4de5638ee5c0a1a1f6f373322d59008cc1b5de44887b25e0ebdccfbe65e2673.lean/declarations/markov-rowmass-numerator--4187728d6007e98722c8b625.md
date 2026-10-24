# markov_rowMass_numerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f275709d-6c0c-9171-d557-f331edd97cc2",
  "kind": "theorem",
  "lexical_name": "markov_rowMass_numerator",
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
  "slug": "markov-rowmass-numerator--4187728d6007e98722c8b625",
  "source": {
    "blob": "591e5e324693c813e6600379f1fd5e185c087ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4187728d6007e98722c8b625ba618948a279eab703a61d3314badc4eaf10f9ba",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f275709d-6c0c-9171-d557-f331edd97cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem markov_rowMass_numerator
    (n : Nat)
    (epsilon : RelaxationParameter)
    (h : WalshFourier.markovTransitionInterval n epsilon) :
    WalshFourier.markovStayNumerator n epsilon +
        n * WalshFourier.markovEdgeNumerator n epsilon =
      epsilon.denominator := by
  unfold WalshFourier.markovStayNumerator
    WalshFourier.markovEdgeNumerator
    WalshFourier.markovTransitionInterval at *
  exact Nat.sub_add_cancel h

/--
The finite relaxation package: spectral Walsh data plus the exact interval
condition used for contraction and Markov transition semantics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `591e5e324693c813e6600379f1fd5e185c087ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
