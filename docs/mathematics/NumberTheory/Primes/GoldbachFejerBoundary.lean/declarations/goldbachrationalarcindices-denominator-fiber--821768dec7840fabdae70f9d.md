# goldbachRationalArcIndices_denominator_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e461a049-a91f-f00e-4ec5-d4533b499d08",
  "kind": "theorem",
  "lexical_name": "goldbachRationalArcIndices_denominator_fiber",
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
  "slug": "goldbachrationalarcindices-denominator-fiber--821768dec7840fabdae70f9d",
  "source": {
    "blob": "7265b7603e55cda94078bfe8bb5b40298c75fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:821768dec7840fabdae70f9d0115b07b952ebe945698bb962aaa172bca141ce2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e461a049-a91f-f00e-4ec5-d4533b499d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalArcIndices_denominator_fiber
    {Q q : ℕ}
    (hq : q ∈ goldbachDenominatorRange Q) :
    ((goldbachRationalArcIndices Q).filter
      (fun aq => aq.2 = q)).image
        (fun aq => aq.1) =
      goldbachCoprimeResidues q := by
  ext a
  rcases mem_goldbachDenominatorRange.mp hq with
    ⟨hq0, hqQ⟩
  simp only [Finset.mem_image, Finset.mem_filter,
    goldbachCoprimeResidues, Finset.mem_filter,
    Finset.mem_range]
  constructor
  · rintro ⟨aq, ⟨haq, haqdim⟩, rfl⟩
    rcases aq with ⟨b, r⟩
    change r = q at haqdim
    change b < q ∧ q.Coprime b
    subst r
    rcases mem_goldbachRationalArcIndices.mp haq with
      ⟨hbQ, hqQ', hq0', hbq, hcop⟩
    exact ⟨hbq, hcop.symm⟩
  · rintro ⟨haq, hcop⟩
    refine ⟨(a, q), ?_, rfl⟩
    constructor
    · apply mem_goldbachRationalArcIndices.mpr
      exact
        ⟨(Nat.le_of_lt haq).trans hqQ,
          hqQ, hq0, haq, hcop.symm⟩
    · rfl

/-- One exact denominator block in the symmetric-window progression model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7265b7603e55cda94078bfe8bb5b40298c75fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
