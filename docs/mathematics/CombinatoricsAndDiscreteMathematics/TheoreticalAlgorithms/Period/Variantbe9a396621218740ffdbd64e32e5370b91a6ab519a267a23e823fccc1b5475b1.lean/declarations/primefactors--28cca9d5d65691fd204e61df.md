# primeFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a86dae32d9569e95fda13b4a5503fa827ea97f78137bcc8b0130ce52cd10cf0",
  "kind": "def",
  "lexical_name": "primeFactors",
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
  "slug": "primefactors--28cca9d5d65691fd204e61df",
  "source": {
    "blob": "61dc3a7060483fd2eae269a94ad476691f1623a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28cca9d5d65691fd204e61dfe29938da7cf70e598d0081e8b7d63e978527689e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a86dae32d9569e95fda13b4a5503fa827ea97f78137bcc8b0130ce52cd10cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primeFactors (n : Nat) : List Nat :=
  go n 2 [] (n + 1)
where
  go : Nat → Nat → List Nat → Nat → List Nat
  | 1, _, acc, _ => acc.reverse
  | _, _, acc, 0 => acc.reverse  -- fuel exhausted
  | n, p, acc, fuel + 1 =>
    if p * p > n then
      if n > 1 then (n :: acc).reverse else acc.reverse
    else if n % p == 0 then
      go (n / p) p (if acc.head? == some p then acc else p :: acc) fuel
    else
      go n (p + 1) acc fuel

/-- Compute `lcm` of a list of natural numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantbe9a396621218740ffdbd64e32e5370b91a6ab519a267a23e823fccc1b5475b1.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61dc3a7060483fd2eae269a94ad476691f1623a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
