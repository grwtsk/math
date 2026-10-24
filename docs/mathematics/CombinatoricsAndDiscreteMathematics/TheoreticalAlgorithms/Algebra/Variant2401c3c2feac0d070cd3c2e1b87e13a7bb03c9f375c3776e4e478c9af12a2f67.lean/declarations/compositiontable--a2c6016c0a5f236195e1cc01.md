# compositionTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:206bba26bcfc090325a3998a2c2182cee82e8d792d7ac6c37ed4fb27557be4d0",
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
  "slug": "compositiontable--a2c6016c0a5f236195e1cc01",
  "source": {
    "blob": "da51ab6bb5b6455d3670a376fe11628d52011135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2c6016c0a5f236195e1cc01fdb298e54eecb3d3b26be7b3cc10b58539a66c75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:206bba26bcfc090325a3998a2c2182cee82e8d792d7ac6c37ed4fb27557be4d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–88.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da51ab6bb5b6455d3670a376fe11628d52011135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
