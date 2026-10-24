# Hfun_lam1q_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:210a38a4-635d-0584-671b-b3474217f799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b75b090-3d85-86f1-3222-2c768c36ebd1",
  "kind": "theorem",
  "lexical_name": "Hfun_lam1q_ge",
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
  "slug": "hfun-lam1q-ge--8328a7134cfe1d9441f4d28a",
  "source": {
    "blob": "97133fcbca06259ea84eb596e061c03b52f484d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8328a7134cfe1d9441f4d28a4298b8df62d8e21a607292d0798d6b45c7a23ee7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b75b090-3d85-86f1-3222-2c768c36ebd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hfun_lam1q_ge (hq : 1 ≤ q) (hT : 0 < T) (hlam : 0 < P.lam) (hl : 0 < l T) :
    Hfun P.lam - cq q / (P.lam * l T) ≤ Hfun (lam1q P q T) := by
  have hc := cq_pos hq
  have hl1 : 0 < l T + cq q := by linarith
  have key : Hfun P.lam - Hfun (lam1q P q T)
      = cq q / (P.lam * l T) - (P.lam - lam1q P q T) / 3 := by
    rw [lam1q_eq P hq hT]
    simp only [Hfun]
    field_simp
    ring
  have hle := lam1q_le P hq hT hlam.le hl
  linarith

/-- `F(λ_{1,χ}) ≥ F(λ) − c_q/l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyQ/Variante155f8fb96b668c88e46bd82ed7c104391ae97642c4b58a72a19ee596e57085a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97133fcbca06259ea84eb596e061c03b52f484d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
