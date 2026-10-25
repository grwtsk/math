# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorkingDirectory.Variantb2167955dc6bf43801e231b5f215c6d4b71ad5c416695fcf192d6d9013cccb6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1189d79225a69486f06e0d7d57e83cf59692b815` · SHA-256 `b2167955dc6bf43801e231b5f215c6d4b71ad5c416695fcf192d6d9013cccb6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/- Fixed helper process directory and absent host credentials, without values. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import os,pathlib\nassert pathlib.Path.cwd() == pathlib.Path('/work/source')\nassert os.environ.get('HOME') == '/work/home'\nassert os.environ.get('TMPDIR') == '/work/tmp'\nassert not any(k in os.environ for k in ['OPENAI_API_KEY','GH_TOKEN','GITHUB_TOKEN','AWS_SECRET_ACCESS_KEY','SSH_AUTH_SOCK'])"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic directory/environment probe failed")
```
