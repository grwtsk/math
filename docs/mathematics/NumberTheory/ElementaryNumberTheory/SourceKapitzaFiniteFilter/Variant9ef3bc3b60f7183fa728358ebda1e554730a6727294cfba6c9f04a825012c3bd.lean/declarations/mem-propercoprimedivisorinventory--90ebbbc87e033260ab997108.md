# mem_properCoprimeDivisorInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d6c9974-cd44-f91e-fabb-3b9954fab449",
  "kind": "theorem",
  "lexical_name": "mem_properCoprimeDivisorInventory",
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
  "slug": "mem-propercoprimedivisorinventory--90ebbbc87e033260ab997108",
  "source": {
    "blob": "760888a34439c2f473dd01b68ab12c537fb7e1c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ebbbc87e033260ab9971088fe68f70d414ac83f468afa7d96be70aa6ec3a54",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d6c9974-cd44-f91e-fabb-3b9954fab449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_properCoprimeDivisorInventory {n d : ℕ} :
    d ∈ properCoprimeDivisorInventory n ↔
      d ∈ n.divisors ∧ 2 ≤ d ∧ 2 ≤ n / d ∧ Nat.Coprime (n / d) 6 := by
  simp only [properCoprimeDivisorInventory, Finset.mem_filter]

/-- Filtering does not introduce divisors or prime-power terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SourceKapitzaFiniteFilter/Variant9ef3bc3b60f7183fa728358ebda1e554730a6727294cfba6c9f04a825012c3bd.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760888a34439c2f473dd01b68ab12c537fb7e1c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
