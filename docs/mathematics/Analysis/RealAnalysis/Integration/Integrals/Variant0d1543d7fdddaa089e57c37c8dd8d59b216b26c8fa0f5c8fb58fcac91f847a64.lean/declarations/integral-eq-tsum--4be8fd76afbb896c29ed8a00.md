# integral_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab102640-cfce-5ba7-87de-3e04282cb1bc",
  "kind": "theorem",
  "lexical_name": "integral_eq_tsum",
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
  "slug": "integral-eq-tsum--4be8fd76afbb896c29ed8a00",
  "source": {
    "blob": "4ba49193468025d7023dedd8cf6801a1d49850b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be8fd76afbb896c29ed8a0083d5513fd34d82665819b5211e5a72cfe1ba52b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab102640-cfce-5ba7-87de-3e04282cb1bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_tsum (p : PMF α) (f : α → E) (hf : Integrable f p.toMeasure) :
    ∫ a, f a ∂(p.toMeasure) = ∑' a, (p a).toReal • f a := calc
  _ = ∫ a in p.support, f a ∂(p.toMeasure) := by rw [restrict_toMeasure_support p]
  _ = ∑' (a : support p), (p.toMeasure {a.val}).toReal • f a := by
    apply integral_countable f p.support_countable
    rwa [IntegrableOn, restrict_toMeasure_support p]
  _ = ∑' (a : support p), (p a).toReal • f a := by
    congr with x; congr 2
    apply PMF.toMeasure_apply_singleton p x (MeasurableSet.singleton _)
  _ = ∑' a, (p a).toReal • f a :=
    tsum_subtype_eq_of_support_subset <| calc
      (fun a ↦ (p a).toReal • f a).support ⊆ (fun a ↦ (p a).toReal).support :=
        Function.support_smul_subset_left _ _
      _ ⊆ support p := fun x h1 h2 => h1 (by simp [h2])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant0d1543d7fdddaa089e57c37c8dd8d59b216b26c8fa0f5c8fb58fcac91f847a64.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba49193468025d7023dedd8cf6801a1d49850b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
