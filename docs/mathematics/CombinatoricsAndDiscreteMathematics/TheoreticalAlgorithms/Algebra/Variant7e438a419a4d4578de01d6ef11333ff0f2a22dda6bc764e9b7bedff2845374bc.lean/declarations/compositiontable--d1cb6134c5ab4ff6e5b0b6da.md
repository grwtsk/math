# compositionTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25f7f816438828ea916e5879154e48690ef01a11e3af0847c1b8a21ad3d180a8",
  "kind": "def",
  "lexical_name": "compositionTable",
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
  "slug": "compositiontable--d1cb6134c5ab4ff6e5b0b6da",
  "source": {
    "blob": "0117a0bbf1d60bbe4c6d7b2303730f6ffd5b0b33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1cb6134c5ab4ff6e5b0b6dab8fd2cb821ebd3500b377e6c81e430fff26b4c2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25f7f816438828ea916e5879154e48690ef01a11e3af0847c1b8a21ad3d180a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def compositionTable : String :=
  let row (cells : List String) := (String.join <| cells.map (pad 7)).trimAsciiEnd.toString
  -- push meta to the end instead of `all` for a cleaner table
  let ks := NeedsKind.all.insertionSort (!·.isMeta && ·.isMeta) |>.toList
  "\n".intercalate <|
    row ("(↓) ≫ (→) " :: ks.map shortName) ::
      ks.map fun k₁ =>
        row <| pad 10 (shortName k₁) :: ks.map fun k₂ =>
          if h : k₁.target = k₂.source then shortName (andThen k₁ k₂) else "-"

/--
info:

(↓) ≫ (→) pub    priv   all    𝓶pub   𝓶priv  𝓶all
pub       pub    priv   -      𝓶pub   𝓶priv  -
priv      -      -      priv   -      -      𝓶priv
all       -      -      all    -      -      𝓶all
𝓶pub      𝓶pub   𝓶priv  -      𝓶pub   𝓶priv  -
𝓶priv     -      -      𝓶priv  -      -      𝓶priv
𝓶all      -      -      𝓶all   -      -      𝓶all
-/
#guard_msgs in
#eval IO.println s!"\n\n{compositionTable}"

-- `NeedsKind.andThen` agrees with composition
#guard Id.run do
  let mut okay := true
  for (k₁, k₂) in NeedsKind.allPairs do
    let fromConnecting := connecting? k₁.source k₂.target (k₁.isMeta || k₂.isMeta)
    if h : k₁.target = k₂.source then
      okay := okay && some (andThen k₁ k₂) == fromConnecting
  return okay

-- Test that braille cells are as expected, at least for single dots
/--
info: #[public: │⠁│, private: │⠂│, public meta: │⠈│, private meta: │⠐│, all: │⠄│, meta all: │⠠│]
-/
#guard_msgs in run_cmd logInfo s!"{NeedsKind.all.map fun k => s!"{k}: {Needs.single 0 k}"}"

-- If this were real, we'd use a monad interface `[MonadRand m]`. Here, we can get by with `RandT`.

variable [RandomGen γ] (g : γ) [Monad m]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0117a0bbf1d60bbe4c6d7b2303730f6ffd5b0b33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
