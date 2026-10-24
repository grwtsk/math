# instDiscreteTopologyZMultiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1298e2639907eed28bbd566e004c358092ae10bbec2570d38cc0be2eaa4ae7c5",
  "kind": "instance",
  "lexical_name": "instDiscreteTopologyZMultiples",
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
  "slug": "instdiscretetopologyzmultiples--f044e875d6c59f42f0374b7f",
  "source": {
    "blob": "be386686d266c130ed132bd4b198870e94bdec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f044e875d6c59f42f0374b7ff5b68801aae128ad6d9e8be57861cdec4ccbbe91",
  "verification": {
    "reference": "docs/verification/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1298e2639907eed28bbd566e004c358092ae10bbec2570d38cc0be2eaa4ae7c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDiscreteTopologyZMultiples (g : G) : DiscreteTopology (zpowers g) := by
  wlog ha : 1 ≤ g
  · specialize this g⁻¹ (one_le_inv'.mpr (le_of_not_ge ha))
    rwa [zpowers_inv] at this
  rcases eq_or_lt_of_le ha with rfl | ha
  · rw [zpowers_one_eq_bot]
    exact Subsingleton.discreteTopology
  rw [discreteTopology_iff_isOpen_singleton_one, isOpen_induced_iff]
  refine ⟨Set.Ioo (g ^ (-1 : ℤ)) (g ^ (1 : ℤ)), isOpen_Ioo, ?_⟩
  ext ⟨_, ⟨n, rfl⟩⟩
  constructor
  · simp only [Set.mem_preimage, Set.mem_Ioo, Set.mem_singleton_iff, and_imp]
    intro hn hn'
    rw [zpow_lt_zpow_iff_right ha] at hn hn'
    simp only [Subtype.ext_iff, show n = 0 by lia, zpow_zero, coe_one]
  · simp_all

variable [MulArchimedean G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be386686d266c130ed132bd4b198870e94bdec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
