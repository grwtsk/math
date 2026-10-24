# hasProd_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4f089bd-8097-0f86-bbce-85e2bb4368e7",
  "kind": "theorem",
  "lexical_name": "hasProd_lt",
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
  "slug": "hasprod-lt--04d64a0f03eee094561bde47",
  "source": {
    "blob": "c4dfa304641f5612d334846c467abe38ac68521e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d64a0f03eee094561bde470c4c40551211d226555b7ea35d5ef1dc64a1f9e9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f089bd-8097-0f86-bbce-85e2bb4368e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_lt [L.NeBot] [L.LeAtTop] (h : f ≤ g) (hi : f i < g i) (hf : HasProd f a₁ L)
    (hg : HasProd g a₂ L) : a₁ < a₂ := by
  classical
  have : update f i 1 ≤ update g i 1 := update_le_update_iff.mpr ⟨rfl.le, fun i _ ↦ h i⟩
  have : 1 / f i * a₁ ≤ 1 / g i * a₂ := hasProd_le this (hf.update i 1) (hg.update i 1)
  simpa only [one_div, mul_inv_cancel_left] using mul_lt_mul_of_lt_of_le hi this

@[to_additive (attr := mono)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4dfa304641f5612d334846c467abe38ac68521e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
