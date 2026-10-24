# ODE_solution_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc6c3ffa-aaec-62c5-f532-dbaf0bec5f34",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique",
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
  "slug": "ode-solution-unique--3c2b52307af2d716091ac5eb",
  "source": {
    "blob": "fd17382c2a8add899969cc6c56a493c2ba42dbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 334,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c2b52307af2d716091ac5ebfbbbc629b5a204b4f909486dd9ff6af59761cfde",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc6c3ffa-aaec-62c5-f532-dbaf0bec5f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique
    (hv : ∀ t, LipschitzWith K (v t))
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ico a b, HasDerivWithinAt f (v t (f t)) (Ici t) t)
    (hg : ContinuousOn g (Icc a b))
    (hg' : ∀ t ∈ Ico a b, HasDerivWithinAt g (v t (g t)) (Ici t) t)
    (ha : f a = g a) :
    EqOn f g (Icc a b) :=
  have hfs : ∀ t ∈ Ico a b, f t ∈ univ := fun _ _ => trivial
  ODE_solution_unique_of_mem_Icc_right (fun t _ => (hv t).lipschitzOnWith) hf hf' hfs hg hg'
    (fun _ _ => trivial) ha

/-- There exists only one global solution to an ODE $\dot x=v(t, x)$ with a given initial value
provided that the RHS is Lipschitz continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd17382c2a8add899969cc6c56a493c2ba42dbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
