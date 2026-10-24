# finrank_eq_sum_primeSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d648021630c69dfed720349c507725498ba5fe53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63f84f42-f979-ca82-b727-d9a5c6fe8cec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2a10343-252b-c2fb-e200-ca0b6c2ea130",
  "kind": "theorem",
  "lexical_name": "finrank_eq_sum_primeSpectrum",
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
  "slug": "finrank-eq-sum-primespectrum--1ef0e5617a0fde012106f2bf",
  "source": {
    "blob": "d648021630c69dfed720349c507725498ba5fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/Algebra/Noetherian/Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef0e5617a0fde012106f2bf354c844650931ced81aaabc97d180d5e1f63fddd",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2a10343-252b-c2fb-e200-ca0b6c2ea130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_sum_primeSpectrum [Fintype (PrimeSpectrum R)] :
    Module.finrank F R = ∑ p : PrimeSpectrum R, Module.finrank F (Localization.AtPrime p.asIdeal) :=
  have (p : Ideal R) [p.IsPrime] : Module.Finite F (Localization.AtPrime p) :=
    Module.Finite.of_surjective (Algebra.algHom F R (Localization.AtPrime p)).toLinearMap
      (localization_surjective p.primeCompl (Localization.AtPrime p))
  ((toPiLocalizationEquiv R).restrictScalars F).toLinearEquiv.finrank_eq.trans
    (Module.finrank_pi_fintype F)

end IsArtinianRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant31df77a34f1da48bfb7d3bb4a5fc21603d18a2689e312e96cb2b456e3d5bd55b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d648021630c69dfed720349c507725498ba5fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
