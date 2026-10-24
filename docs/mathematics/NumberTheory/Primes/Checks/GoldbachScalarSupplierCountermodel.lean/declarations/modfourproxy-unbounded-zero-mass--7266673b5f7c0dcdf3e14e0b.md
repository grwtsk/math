# modFourProxy_unbounded_zero_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66455c7c-602e-0fbf-cc68-8939872881de",
  "kind": "theorem",
  "lexical_name": "modFourProxy_unbounded_zero_mass",
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
  "slug": "modfourproxy-unbounded-zero-mass--7266673b5f7c0dcdf3e14e0b",
  "source": {
    "blob": "2334e4f61b5ee1b62cdc0145489134e08d84b9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7266673b5f7c0dcdf3e14e0b8197cbeaa15cccfa516b9156c8e9bddfb7e59af1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66455c7c-602e-0fbf-cc68-8939872881de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modFourProxy_unbounded_zero_mass {c : ℝ} (hc0 : 0 ≤ c) (hc1 : c ≤ 1)
    (N₀ : ℕ) : ∃ N, N₀ ≤ N ∧ 4 < N ∧ Even N ∧
      modFourProxyMass c N = 0 ∧
      ∀ k, k ≤ N → |modFourProxyPrefix c k| ≤ (N + 1 : ℝ) / 100 := by
  refine ⟨4 * (N₀ + 500), by omega, by omega, ?_, ?_, ?_⟩
  · exact ⟨2 * (N₀ + 500), by omega⟩
  · exact modFourProxyMass_zero c (by omega) (by omega)
  · exact modFourProxy_one_percent hc0 hc1 (by omega)

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2334e4f61b5ee1b62cdc0145489134e08d84b9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
