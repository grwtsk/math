# IsTheta.finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c80b587d-20e3-6917-2254-6e380954fab7",
  "kind": "theorem",
  "lexical_name": "IsTheta.finsetProd",
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
  "slug": "istheta-finsetprod--b282f34a6eab2ccd5c7fd53f",
  "source": {
    "blob": "f2b95c237f947eff5defbd5dacd6a87f51ad6d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 223,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant0f3f529c7b7f1d7e1c08b6045e42e348a35e6a346a5f9eaa92740064c954d793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b282f34a6eab2ccd5c7fd53f1e790142b5909e17f2762e20b60d4d28c157e8a1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Variant0f3f529c7b7f1d7e1c08b6045e42e348a35e6a346a5f9eaa92740064c954d793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c80b587d-20e3-6917-2254-6e380954fab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTheta.finsetProd {ι : Type*} {s : Finset ι} {f : ι → α → 𝕜} {g : ι → α → 𝕜'}
    (h : ∀ i ∈ s, f i =Θ[l] g i) : (∏ i ∈ s, f i ·) =Θ[l] (∏ i ∈ s, g i ·) :=
  ⟨.finsetProd fun i hi ↦ (h i hi).isBigO, .finsetProd fun i hi ↦ (h i hi).symm.isBigO⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Variant0f3f529c7b7f1d7e1c08b6045e42e348a35e6a346a5f9eaa92740064c954d793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant0f3f529c7b7f1d7e1c08b6045e42e348a35e6a346a5f9eaa92740064c954d793.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b95c237f947eff5defbd5dacd6a87f51ad6d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
