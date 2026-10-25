# ofScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e91b53738647976c6b228761039811e5bcfaef749f5bf2aeffeff1ebf8b500d7",
  "kind": "def",
  "lexical_name": "ofScientific",
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
  "slug": "ofscientific--3026cec6c36e4db36515b0bb",
  "source": {
    "blob": "ea5aa043ef51a914234ac2c250ec1357bbb94a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant416fdb0c8c756c5b3ac0c08e1748f754dc63cf0cd8366e0e9267a41982883cdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3026cec6c36e4db36515b0bb3ecb125df9a6535c1e767bb90e24d4ada6d48b54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant416fdb0c8c756c5b3ac0c08e1748f754dc63cf0cd8366e0e9267a41982883cdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e91b53738647976c6b228761039811e5bcfaef749f5bf2aeffeff1ebf8b500d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofScientific (spec : Format) (m : Nat) (e : Int) : UnpackedFloat :=
  if hm : m = 0 then
    .zero .positive
  -- Safety check to avoid computing huge powers of ten
  else if e > 2 ^ spec.exponentBits then
    .infinity .positive
  -- Safety check to avoid computing huge powers of ten
  else if e < -((2 ^ spec.exponentBits : Int) + m.log2) then
    .zero .positive
  else if 0 ≤ e then
    mul spec (.finite .positive (m <<< spec.mantissaBits) (-spec.mantissaBits) (by simpa [Nat.pos_iff_ne_zero]))
      (.finite .positive (10 ^ e.toNat) 0 (Nat.pow_pos (by decide)))
  else
    div spec (.finite .positive m 0 (Nat.pos_iff_ne_zero.2 hm))
      (.finite .positive (10 ^ (-e).toNat) 0 (Nat.pow_pos (by decide)))

end Float.Model.UnpackedFloat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant416fdb0c8c756c5b3ac0c08e1748f754dc63cf0cd8366e0e9267a41982883cdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant416fdb0c8c756c5b3ac0c08e1748f754dc63cf0cd8366e0e9267a41982883cdb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5aa043ef51a914234ac2c250ec1357bbb94a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
