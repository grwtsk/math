# sinPoly_add_cosPoly_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7daa9b8eb3552337ffb8da3441481f0d01473a05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9baf737b-927c-9aa6-0097-7155384a30ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a6a6bdb-1c81-9345-06c5-0b0ce6d7d7bb",
  "kind": "lemma",
  "lexical_name": "sinPoly_add_cosPoly_eval",
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
  "slug": "sinpoly-add-cospoly-eval--8240fa0b3f6cd0b11f50338e",
  "source": {
    "blob": "7daa9b8eb3552337ffb8da3441481f0d01473a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8240fa0b3f6cd0b11f50338e2ecd6eb507e96f322d1f94b836bf4b8025ce547f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a6a6bdb-1c81-9345-06c5-0b0ce6d7d7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sinPoly_add_cosPoly_eval (θ : ℝ) :
    ∀ n : ℕ,
      I n θ * θ ^ (2 * n + 1) = n ! * ((sinPoly n).eval₂ (Int.castRingHom _) θ * sin θ +
        (cosPoly n).eval₂ (Int.castRingHom _) θ * cos θ)
  | 0 => by simp [sinPoly, cosPoly, I_zero]
  | 1 => by simp [I_one, sinPoly, cosPoly, sub_eq_add_neg]
  | n + 2 => by
      calc I (n + 2) θ * θ ^ (2 * (n + 2) + 1) = I (n + 2) θ * θ ^ 2 * θ ^ (2 * n + 3) := by ring
        _ = 2 * (n + 2) * (2 * n + 3) * (I (n + 1) θ * θ ^ (2 * (n + 1) + 1)) -
            4 * (n + 2) * (n + 1) * θ ^ 2 * (I n θ * θ ^ (2 * n + 1)) := by rw [recursion]; ring
        _ = _ := by simp [sinPoly_add_cosPoly_eval, sinPoly, cosPoly, Nat.factorial_succ]; ring

/--
Auxiliary for the proof that `π` is irrational.
For a polynomial `p` with natural degree `≤ k` and integer coefficients, evaluating `p` at a
rational `a / b` gives a rational of the form `z / b ^ k`.
TODO: should this be moved elsewhere? It uses none of the pi-specific definitions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irrational/Variante2389219702244d9a80929f612a3d1838eaa6c938268c1b10a2700ad36afc2ed.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7daa9b8eb3552337ffb8da3441481f0d01473a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
