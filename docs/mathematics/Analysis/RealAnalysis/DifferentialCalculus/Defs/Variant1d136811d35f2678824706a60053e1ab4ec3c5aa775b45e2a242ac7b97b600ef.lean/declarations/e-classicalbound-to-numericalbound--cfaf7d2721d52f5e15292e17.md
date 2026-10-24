# Eπ.classicalBound.to_numericalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1a5002a-4436-5775-d6b2-e7fe4b0b3c36",
  "kind": "lemma",
  "lexical_name": "Eπ.classicalBound.to_numericalBound",
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
  "slug": "e-classicalbound-to-numericalbound--cfaf7d2721d52f5e15292e17",
  "source": {
    "blob": "549aa56f19e3854fd5e5ff6a42a7279dc7851dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfaf7d2721d52f5e15292e175c1017a86a8eeaa7f42f5ea55578239a53718bab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a5002a-4436-5775-d6b2-e7fe4b0b3c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Eπ.classicalBound.to_numericalBound
    (A B C R x₀ x₁ : ℝ) (hA : 0 < A) (hB : 0 < B)
    (hC : 0 < C) (hR : 0 < R)
    (hEπ : Eπ.classicalBound A B C R x₀)
    (hx₁ : x₁ ≥ max x₀ (Real.exp (R * (2 * B / C) ^ 2))) :
    Eπ.numericalBound x₁ (fun x ↦ admissible_bound A B C R x) :=
  fun x hx ↦
    le_trans (hEπ x (le_trans (le_max_left ..) (le_trans hx₁ hx)))
      (admissible_bound.mono A B C R hA hB hC hR
        (Set.mem_Ici.mpr (le_trans (le_max_right ..) hx₁))
        (Set.mem_Ici.mpr (le_trans (le_max_right ..) (le_trans hx₁ hx))) hx)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant1d136811d35f2678824706a60053e1ab4ec3c5aa775b45e2a242ac7b97b600ef.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `549aa56f19e3854fd5e5ff6a42a7279dc7851dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
