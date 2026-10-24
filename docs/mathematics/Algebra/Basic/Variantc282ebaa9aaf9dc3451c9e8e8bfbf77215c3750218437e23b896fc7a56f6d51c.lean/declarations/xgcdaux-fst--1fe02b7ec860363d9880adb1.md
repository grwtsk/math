# xgcdAux_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b99b4b31bb24159cd33c61720542181c5ee4466",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ae1d79c-3160-7e41-460d-5f240fc2c5eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a454b75a-8f00-92e3-c77a-447683a138c0",
  "kind": "theorem",
  "lexical_name": "xgcdAux_fst",
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
  "slug": "xgcdaux-fst--1fe02b7ec860363d9880adb1",
  "source": {
    "blob": "4b99b4b31bb24159cd33c61720542181c5ee4466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fe02b7ec860363d9880adb138f63570ab31f8e204f16405e139d02dde2e3957",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a454b75a-8f00-92e3-c77a-447683a138c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xgcdAux_fst (x y : R) : ∀ s t s' t', (xgcdAux x s t y s' t').1 = gcd x y :=
  GCD.induction x y
    (by
      intros
      rw [xgcd_zero_left, gcd_zero_left])
    fun x y h IH s t s' t' => by
    simp only [xgcdAux_rec h, if_neg h, IH]
    rw [← gcd_val]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc282ebaa9aaf9dc3451c9e8e8bfbf77215c3750218437e23b896fc7a56f6d51c.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b99b4b31bb24159cd33c61720542181c5ee4466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
