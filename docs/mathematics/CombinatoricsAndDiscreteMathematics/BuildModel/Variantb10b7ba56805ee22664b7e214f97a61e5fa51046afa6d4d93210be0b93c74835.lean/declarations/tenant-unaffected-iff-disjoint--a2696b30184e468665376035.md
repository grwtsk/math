# tenant_unaffected_iff_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f89ce3a-6a34-0a37-dbf9-14ba7f34b97f",
  "kind": "theorem",
  "lexical_name": "tenant_unaffected_iff_disjoint",
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
  "slug": "tenant-unaffected-iff-disjoint--a2696b30184e468665376035",
  "source": {
    "blob": "4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2696b30184e468665376035338283bc64022eeb7435660a48962c8b3236d5ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f89ce3a-6a34-0a37-dbf9-14ba7f34b97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tenant_unaffected_iff_disjoint
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (changes : ChangeSet G) :
    ¬ Affected t changes ↔
      Disjoint (G.depClosure t.roots) (leanRebuild changes) := by
  rw [tenant_affected_iff_inter_nonempty]
  exact Finset.not_nonempty_iff_eq_empty.trans
    Finset.disjoint_iff_inter_eq_empty.symm

/-- Syntactic equality of every public fingerprint visible to a tenant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
