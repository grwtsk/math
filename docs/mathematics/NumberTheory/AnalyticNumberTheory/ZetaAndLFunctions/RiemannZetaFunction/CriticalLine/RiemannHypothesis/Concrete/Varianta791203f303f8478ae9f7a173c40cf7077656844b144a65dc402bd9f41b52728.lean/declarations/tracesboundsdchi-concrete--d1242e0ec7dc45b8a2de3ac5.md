# tracesBoundsDChi_concrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c01dda163263b4af9bf107adba3dd84f9297a0e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46a84942-36e0-d5aa-9a7a-e6b23370ef06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8b9549b-6e4e-b590-912e-cc391291d688",
  "kind": "theorem",
  "lexical_name": "tracesBoundsDChi_concrete",
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
  "slug": "tracesboundsdchi-concrete--d1242e0ec7dc45b8a2de3ac5",
  "source": {
    "blob": "c01dda163263b4af9bf107adba3dd84f9297a0e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1242e0ec7dc45b8a2de3ac5d3a5f013c4ee5211417703ce796d0204dd7e6ddc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8b9549b-6e4e-b590-912e-cc391291d688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tracesBoundsDChi_concrete {Z : ZeroConfig} (hP : P.Valid) (hq : 1 ≤ q)
    (hcu : CoeffUnimodular q c) (inp : PaperInputsChi κ q c Z)
    (hLoc : ThmD.LocalHypsCoreDEventually P) :
    TracesBoundsDChi P q (concreteDataDChi P κ q c Z).aT (concreteDataDChi P κ q c Z).bT
      (concreteDataDChi P κ q c Z).JT (concreteDataDChi P κ q c Z).trG
      (concreteDataDChi P κ q c Z).trG2 (concreteDataDChi P κ q c Z).Ncnt :=
  tracesBoundsDChi_of_factsDChi _ (concreteFactsDChi hP hq hcu inp hLoc)

end ThmDE
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01dda163263b4af9bf107adba3dd84f9297a0e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
