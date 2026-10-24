# density_ae_eq_limitProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3771d3e0-f2a1-c8ba-2c48-ebcbbbe06b40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf89b57c-4fb5-8f07-01b6-82658a7e1485",
  "kind": "lemma",
  "lexical_name": "density_ae_eq_limitProcess",
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
  "slug": "density-ae-eq-limitprocess--410e73d6457a96f36f4b7ce6",
  "source": {
    "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:410e73d6457a96f36f4b7ce6a9100f2095613515ae13390ac9c423f9ff54d094",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf89b57c-4fb5-8f07-01b6-82658a7e1485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma density_ae_eq_limitProcess (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (a : α) {s : Set β} (hs : MeasurableSet s) :
    (fun x ↦ density κ ν a x s)
      =ᵐ[ν a] (countableFiltration γ).limitProcess
        (fun n x ↦ densityProcess κ ν n a x s) (ν a) := by
  filter_upwards [tendsto_densityProcess_limitProcess hκν a hs] with t ht using ht.limsup_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa481c381282b67d7a92dad1fe0e7877af5cd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
