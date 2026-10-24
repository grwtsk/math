# denominator_clears

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:857a9456-d004-2a45-5007-b04246e2ba3d",
  "kind": "theorem",
  "lexical_name": "denominator_clears",
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
  "slug": "denominator-clears--08fece95034b3ec32cbbb75b",
  "source": {
    "blob": "c4319effa7873770a9f40a138ab56f2795c73ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08fece95034b3ec32cbbb75ba81b33a2ef29f43d22282307ca94a3d7f4f406c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:857a9456-d004-2a45-5007-b04246e2ba3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denominator_clears (d j h e : A) (hdj : d * j = 1) (n : ℕ) :
    d ^ denominatorExponent n * iterate j h e n = numerator d h e n := by
  induction n with
  | zero => simp [denominatorExponent, iterate, numerator]
  | succ n ih =>
    have hp : d ^ (3 * denominatorExponent n) = (d ^ denominatorExponent n) ^ 3 := by
      rw [← pow_mul]
      congr 1
      omega
    calc
      d ^ denominatorExponent (n + 1) * iterate j h e (n + 1) =
          (d * j) * (d ^ (3 * denominatorExponent n) * e ^ 2 -
            h * d ^ denominatorExponent n * (d ^ denominatorExponent n * iterate j h e n) ^ 2 -
            (d ^ denominatorExponent n * iterate j h e n) ^ 3) := by
              simp only [denominatorExponent, iterate, step, pow_add, pow_one, hp]
              ring
      _ = numerator d h e (n + 1) := by simp only [hdj, ih, one_mul, numerator]

/-- Exact accounting identity for the conservative exponent recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4319effa7873770a9f40a138ab56f2795c73ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
