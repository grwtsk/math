# minimalDag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e0e302ff36b446cf8bc56868c03e50642898045b620f976106508e438b27d7d",
  "kind": "def",
  "lexical_name": "minimalDag",
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
  "slug": "minimaldag--99b54e705fcb1e31c03e5822",
  "source": {
    "blob": "f9af2f5c01a2d3a4f01d2de06e1f318c12c7468a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpinorSoundness/Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99b54e705fcb1e31c03e5822cb424cfe53adf260de2f59f96c4add6616a13ab1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpinorSoundness/Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e0e302ff36b446cf8bc56868c03e50642898045b620f976106508e438b27d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minimalDag : Dag :=
  { V := [
      { id := ⟨"nA"⟩, expr := dummyExpr },
      { id := ⟨"nB"⟩, expr := dummyExpr }
    ],
    E := [exampleSpinorEdge]
  }

#eval IO.println "▶ Spinor test: embedding node nA into ℓ²(4)..."
#eval embed 4 (sampleUUID "nA")

#eval IO.println "▶ Spinor test: embedding distance (ℓ²)..."
#eval dist (embed 4 (sampleUUID "nA")) (embed 4 (sampleUUID "nB"))

#eval IO.println "▶ Backfill test: generate path from spinor edge..."
#eval match backfill exampleSpinorEdge minimalDag with
  | some result =>
    IO.println s!"Backfill: {result.hops.length} hops, valid = {result.valid}"
  | none => IO.println "Backfill failed: edge was not eligible"

#check Spinor.sound  -- ensures theorem is syntactically correct
#check BackfillSpinor.dense_reduction  -- check contract exists

#eval IO.println "✅ spinor_soundness.lean tests complete."
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpinorSoundness/Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpinorSoundness/Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9af2f5c01a2d3a4f01d2de06e1f318c12c7468a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
