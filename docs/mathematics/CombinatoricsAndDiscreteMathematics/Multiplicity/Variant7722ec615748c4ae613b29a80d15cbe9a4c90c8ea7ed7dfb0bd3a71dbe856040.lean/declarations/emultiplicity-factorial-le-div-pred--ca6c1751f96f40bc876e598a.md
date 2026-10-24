# emultiplicity_factorial_le_div_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b44aff48-694a-19ee-597a-54a2a9752e70",
  "kind": "theorem",
  "lexical_name": "emultiplicity_factorial_le_div_pred",
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
  "slug": "emultiplicity-factorial-le-div-pred--ca6c1751f96f40bc876e598a",
  "source": {
    "blob": "2fe5ba89c0076f5a7140e285b5ae6711366e732c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca6c1751f96f40bc876e598ae3b5da1a66ab19a264bc985795889a6f71e224e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b44aff48-694a-19ee-597a-54a2a9752e70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_factorial_le_div_pred {p : ℕ} (hp : p.Prime) (n : ℕ) :
    emultiplicity p n ! ≤ (n / (p - 1) : ℕ) := by
  rw [hp.emultiplicity_factorial (lt_succ_self _)]
  apply WithTop.coe_mono
  exact Nat.geom_sum_Ico_le hp.two_le _ _

/-- The multiplicity of `p` in `choose (n + k) k` is the number of carries when `k` and `n`
  are added in base `p`. The set is expressed by filtering `Ico 1 b` where `b`
  is any bound greater than `log p (n + k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fe5ba89c0076f5a7140e285b5ae6711366e732c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
