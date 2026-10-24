# externalPNTAndInclusiveMangoldt_eq_psi_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39fb3911-88ff-5241-a3e6-9b4dc3264712",
  "kind": "theorem",
  "lexical_name": "externalPNTAndInclusiveMangoldt_eq_psi_natCast",
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
  "slug": "externalpntandinclusivemangoldt-eq-psi-natcast--7604a07b756a6bc6cd26d62e",
  "source": {
    "blob": "eefb528165ad0cc8bbf186f331e60fbfa5d50f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7604a07b756a6bc6cd26d62ef554d16fdf69e82b5bb3e312bfdd6a39c26f4899",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39fb3911-88ff-5241-a3e6-9b4dc3264712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem externalPNTAndInclusiveMangoldt_eq_psi_natCast
    (N : ℕ) :
    externalPNTAndInclusiveMangoldt N = Chebyshev.psi (N : ℝ) := by
  rw [Chebyshev.psi_eq_sum_Icc]
  unfold externalPNTAndInclusiveMangoldt
  simp only [Nat.floor_natCast]
  have hset : Finset.Iic N = Finset.Icc 0 N := by
    ext n
    simp only [Finset.mem_Iic, Finset.mem_Icc]
    omega
  rw [hset]

/-- Exact external theorem proposition, not an imported proof term.
Division at N=0 is totalized; the limit is insensitive to its value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefb528165ad0cc8bbf186f331e60fbfa5d50f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
