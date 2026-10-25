# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bd02c76d3c849a78ce56508b0bff4f1c878eab3c88baa8be1eb99b5fe8e74a0",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--df34cefae231e2154c6809f4",
  "source": {
    "blob": "c8def191b7e18d755cc5e0982dc597bd1a78bf67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variante03e7874875d7b81b24871b1f77ec2a486d16d6ec610da550cc7fe61c9db9d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df34cefae231e2154c6809f46be5c15f7b0fb0d788dc4c20c9d095e6fd707698",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variante03e7874875d7b81b24871b1f77ec2a486d16d6ec610da550cc7fe61c9db9d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bd02c76d3c849a78ce56508b0bff4f1c878eab3c88baa8be1eb99b5fe8e74a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (n m k x : ℤ) (hn : 0 < n) (hk : 0 ≤ k + n) (h : k + n = 2 + x)
    (hans : k + n = m + x) (hans2 : 0 ≤ m) : k + n = m + x := by
  lift n to ℕ using le_of_lt hn
  guard_target =ₛ k + ↑n = m + x; guard_hyp hn : (0 : ℤ) < ↑n
  lift m to ℕ
  guard_target =ₛ 0 ≤ m; swap; guard_target =ₛ k + ↑n = ↑m + x
  lift (k + n) to ℕ using hk with l hl
  exact hans
  exact hans2

-- fail gracefully when the lifted variable is a local definition
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variante03e7874875d7b81b24871b1f77ec2a486d16d6ec610da550cc7fe61c9db9d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variante03e7874875d7b81b24871b1f77ec2a486d16d6ec610da550cc7fe61c9db9d06.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8def191b7e18d755cc5e0982dc597bd1a78bf67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
