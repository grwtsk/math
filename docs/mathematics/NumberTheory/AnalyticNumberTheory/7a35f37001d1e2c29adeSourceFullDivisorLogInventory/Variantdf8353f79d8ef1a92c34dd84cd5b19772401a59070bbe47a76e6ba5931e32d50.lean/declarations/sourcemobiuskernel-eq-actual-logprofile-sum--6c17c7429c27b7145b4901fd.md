# sourceMobiusKernel_eq_actual_logProfile_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:120e9a64-4d4c-2e20-68e5-febcc7ea1b8b",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_eq_actual_logProfile_sum",
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
  "slug": "sourcemobiuskernel-eq-actual-logprofile-sum--6c17c7429c27b7145b4901fd",
  "source": {
    "blob": "aecb2aa5253778e26a05be92e95feeeaf9833158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c17c7429c27b7145b4901fdbfa74e242f0fdfecef18cdd92ef7fe2008d4d5fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:120e9a64-4d4c-2e20-68e5-febcc7ea1b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_eq_actual_logProfile_sum (A k : ℝ) (hk : 0 < k) :
    sourceMobiusKernel A k =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k (m : ℝ) := by
  unfold sourceMobiusKernel
  apply Finset.sum_congr rfl
  intro m hm
  exact sourceKernelTerm_eq_actual_logProfile A k m hk (Finset.mem_Icc.mp hm).1

/-- Existing full Lambda=mu*log arithmetic reconstruction, in literal actual profile coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecb2aa5253778e26a05be92e95feeeaf9833158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
