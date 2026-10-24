# isNat_prime_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4d4af2f-ed22-9562-6dda-d67216867dd2",
  "kind": "theorem",
  "lexical_name": "isNat_prime_1",
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
  "slug": "isnat-prime-1--5f2487a6ff9aa8e19ca579de",
  "source": {
    "blob": "06a4ff04ed285c952f52fe131fdb00f68dee870e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 181,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2487a6ff9aa8e19ca579de765bd6f19c342849ec9f0d0ee46b1d811bc3689a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4d4af2f-ed22-9562-6dda-d67216867dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_prime_1 : {n : ℕ} → IsNat n (nat_lit 1) → ¬ n.Prime
  | _, ⟨rfl⟩ => not_prime_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a4ff04ed285c952f52fe131fdb00f68dee870e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
