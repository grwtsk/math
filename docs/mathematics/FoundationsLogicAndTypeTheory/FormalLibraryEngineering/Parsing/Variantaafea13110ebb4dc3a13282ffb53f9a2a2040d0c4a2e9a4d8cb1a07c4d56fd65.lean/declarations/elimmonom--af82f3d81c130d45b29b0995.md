# elimMonom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:274a3668a737cd8d2a97a92ac44cf5d77adc41e8401244fa62e7be7fce17c26f",
  "kind": "def",
  "lexical_name": "elimMonom",
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
  "slug": "elimmonom--af82f3d81c130d45b29b0995",
  "source": {
    "blob": "629813390c1ee7894638728fd7a2771d87eaf46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af82f3d81c130d45b29b0995ece48cde72d700f55e78b2d44a0dd1ab5f119f24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:274a3668a737cd8d2a97a92ac44cf5d77adc41e8401244fa62e7be7fce17c26f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elimMonom (s : Sum) (m : Map Monom ℕ) : Map Monom ℕ × Map ℕ ℤ :=
  s.foldr (fun mn coeff ⟨map, out⟩ ↦
    match map[mn]? with
    | some n => ⟨map, out.insert n coeff⟩
    | none =>
      let n := map.size
      ⟨map.insert mn n, out.insert n coeff⟩)
    (m, TreeMap.empty)

/--
`toComp red e e_map monom_map` converts an expression of the form `t < 0`, `t ≤ 0`, or `t = 0`
into a `comp` object.

`e_map` maps atomic expressions to indices; `monom_map` maps monomials to indices.
Both of these are updated during processing and returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629813390c1ee7894638728fd7a2771d87eaf46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
