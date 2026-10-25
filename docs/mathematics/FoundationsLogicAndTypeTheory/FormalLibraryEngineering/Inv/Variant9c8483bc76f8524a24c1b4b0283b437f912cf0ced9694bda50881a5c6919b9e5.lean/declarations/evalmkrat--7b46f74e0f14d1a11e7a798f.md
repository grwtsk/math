# evalMkRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efb0a3d9c98ac184aeb276c1d7b009375a95fc0894b27f28f29fc38d7a61944a",
  "kind": "def",
  "lexical_name": "evalMkRat",
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
  "slug": "evalmkrat--7b46f74e0f14d1a11e7a798f",
  "source": {
    "blob": "9df32422d8e5cac17c8397d87a432ca7391034db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b46f74e0f14d1a11e7a798f1306627606aef98b332e250e06612080d1d38652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efb0a3d9c98ac184aeb276c1d7b009375a95fc0894b27f28f29fc38d7a61944a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalMkRat : NormNumExt where eval {u α} (e : Q(ℚ)) : MetaM (Result e) := do
  let .app (.app (.const ``mkRat _) (a : Q(ℤ))) (b : Q(ℕ)) ← whnfR e | failure
  haveI' : $e =Q mkRat $a $b := ⟨⟩
  let ra ← derive a
  let some ⟨_, na, pa⟩ := ra.toInt (q(Int.instRing) : Q(Ring Int)) | failure
  let ⟨nb, pb⟩ ← deriveNat q($b) q(AddCommMonoidWithOne.toAddMonoidWithOne)
  let rab ← derive q($na / $nb : Rat)
  let ⟨q, n, d, p⟩ ← rab.toRat' q(Rat.instDivisionRing)
  return .isRat' _ q n d q(isRat_mkRat $pa $pb $p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df32422d8e5cac17c8397d87a432ca7391034db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
