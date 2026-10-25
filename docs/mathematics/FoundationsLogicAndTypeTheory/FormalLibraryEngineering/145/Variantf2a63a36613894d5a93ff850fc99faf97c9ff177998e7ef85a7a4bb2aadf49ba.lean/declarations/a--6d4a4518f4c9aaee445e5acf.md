# A

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68f78b2748f18f8c145d04d7902d83b5f23a340c77ac1a29333c132aa8819e6a",
  "kind": "abbrev",
  "lexical_name": "A",
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
  "slug": "a--6d4a4518f4c9aaee445e5acf",
  "source": {
    "blob": "7353c75e92753e8f623a8137d3ad013cfc0a7bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variantf2a63a36613894d5a93ff850fc99faf97c9ff177998e7ef85a7a4bb2aadf49ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d4a4518f4c9aaee445e5acf950b66512e1749d3b5c95dfd420f4eb61b147998",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variantf2a63a36613894d5a93ff850fc99faf97c9ff177998e7ef85a7a4bb2aadf49ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68f78b2748f18f8c145d04d7902d83b5f23a340c77ac1a29333c132aa8819e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev A (x : ℝ) : Finset ℕ :=
  (Finset.Icc 0 ⌊x⌋₊).preimage s (Nat.nth_injective Nat.squarefree_infinite).injOn

/--
Let $s_1 < s_2 < \cdots$ be the sequence of squarefree numbers. Is it true that, for any
$\alpha\geq 0$,
$$
\lim_{x\to\infty} \frac{1}{x}\sum_{s_n\leq x}(s_{n+1}-s_n)^\alpha
$$
exists?
-/
@[category research open, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variantf2a63a36613894d5a93ff850fc99faf97c9ff177998e7ef85a7a4bb2aadf49ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variantf2a63a36613894d5a93ff850fc99faf97c9ff177998e7ef85a7a4bb2aadf49ba.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7353c75e92753e8f623a8137d3ad013cfc0a7bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
